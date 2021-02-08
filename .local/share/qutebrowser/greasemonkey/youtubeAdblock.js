// ==UserScript==
// @name         Youtube Ad Cleaner(Include Non-Skippable Ads- works)
// @namespace    http://tampermonkey.net/
// @version      1.47.6
// @description  Bypass all youtube ads including in video ads, skippable and non-skippable Ads
// @author       BjDanny
// @run-at          document-start
// @match        *://*.youtube.com/*
// ==/UserScript==
"use strict";

function getUrlWithTimeStamp() {
  let seconds;
  let videoId = window.location.href.split("?v=");
  let domain = "https://youtu.be/";
  let url;
  let currentTime = document
    .getElementsByClassName("ytp-time-current")[0]
    .textContent.split(":");
  switch (currentTime.length) {
    case 3:
      seconds =
        parseInt(currentTime[0]) * 3600 +
        parseInt(currentTime[1]) * 60 +
        parseInt(currentTime[2]) +
        1;
      if (seconds.toString().charAt(0) == "0") {
        return domain + videoId[1] + "?t=" + seconds.toString().substr(1);
      } else {
        return domain + videoId[1] + "?t=" + seconds.toString();
      }
      break;
    case 2:
      seconds = parseInt(currentTime[0]) * 60 + parseInt(currentTime[1]) + 1;
      if (seconds.toString().charAt(0) == "0") {
        return domain + videoId[1] + "?t=" + seconds.toString().substr(1);
      } else {
        return domain + videoId[1] + "?t=" + seconds.toString();
      }
      break;
    case 1:
      seconds = parseInt(currentTime[0]) + 1;
      if (seconds.toString().charAt(0) == "0") {
        return domain + videoId[1] + "?t=" + seconds.toString().substr(1);
      } else {
        return domain + videoId[1] + "?t=" + seconds.toString();
      }
      break;
  }
}

//handles non-skippable Ad for firefox
function fixFireFox() {
  let url = getUrlWithTimeStamp();
  const keyWords = ["Your video", "Video will play", "Ad will end"];
  try {
    keyWords.forEach((k) => {
      if (
        document
          .getElementsByClassName("ytp-ad-text ytp-ad-preview-text")[0]
          ["textContent"].includes(k) == true
      ) {
        console.log("Non-Skippable video Ad is found");
        setTimeout(() => {
          window.location = url;
        }, 500);
      }
    });
  } catch (e) {
    return;
  }
}

function checkUserAgent() {
  if (navigator.userAgent.includes("Firefox")) {
    return "Firefox";
  } else {
    return "Chrome";
  }
}

//handles non-skippable Ad for chrome
function adMonitor() {
  try {
    let yt = document.getElementById("movie_player");
    let urlWithTimeStamp = yt.getVideoUrl();
    if (yt !== undefined || yt !== null) {
      let ytAdState = yt.getAdState();
      if (ytAdState === 1) {
        console.log("Non-Skippable video Ad is found");
        yt.stopVideo();
        setTimeout(() => {
          window.location = urlWithTimeStamp;
        }, 500);
      }
    }
  } catch (e) {
    return;
  }
}

function setFix() {
  if (checkUserAgent() === "Firefox") {
    console.log("Firefox is detected");
    setInterval(fixFireFox, 1000);
  } else if (checkUserAgent() === "Chrome") {
    console.log("Chrome is detected");
    setInterval(adMonitor, 1000);
  }
}

function removeSp() {
  try {
    if (document.getElementById("support").innerText.includes("Ad") == true) {
      //                    document.getElementsByClassName("ytd-rich-item-renderer")[0].remove();
      document.getElementsByClassName("ytd-rich-item-renderer")[0].innerHTML =
        "<span style='font-size:40px;background-color:white'>Removed AD</span>";
      console.log("Sponsor Ad removed!");
    }
  } catch (e) {
    return;
  }
}

var Ads = {
  aId: [
    "masthead-ad",
    "player-ads",
    "top-container",
    "offer-module",
    "pyv-watch-related-dest-url",
    "ytd-promoted-video-renderer",
  ],
  aClass: [
    "style-scope ytd-search-pyv-renderer",
    "ytd-compact-promoted-video-renderer",
    "style-scope ytd-carousel-ad-renderer",
    "ytp-ad-overlay-container",
    "ytp-ad-message-container",
  ],
  aTag: ["ytd-promoted-sparkles-text-search-renderer"],
  vdoAd: ["ytp-ad-text ytp-ad-preview-text", "ytp-ad-skip-button ytp-button"],
  removeByID: function () {
    this.aId.forEach((i) => {
      let AdId = document.getElementById(i);
      if (AdId) AdId.remove();
    });
  },
  removeByClassName: function () {
    this.aClass.forEach((c) => {
      let AdClass = document.getElementsByClassName(c);
      if (AdClass[0]) AdClass[0].remove();
    });
  },
  removeByTagName: function () {
    this.aTag.forEach((t) => {
      let AdTag = document.getElementsByTagName(t);
      if (AdTag[0]) AdTag[0].remove();
    });
  },
  removeVdoAd: function () {
    this.vdoAd.forEach((v) => {
      let AdVdo = document.getElementsByClassName(v)[0];
      if (AdVdo) AdVdo.click();
    });
  }, //handles skippable video Ad
};

function killAd() {
  Ads.removeByID();
  Ads.removeByClassName();
  Ads.removeByTagName();
  Ads.removeVdoAd();
  removeSp();
}

document.addEventListener("DOMContentLoaded", () => {
  setFix();
  setInterval(killAd, 100);
});
