# lsp & lint hack
from qutebrowser.config.configfiles import ConfigAPI  # noqa: F401
from qutebrowser.config.config import ConfigContainer  # noqa: F401

config: ConfigAPI = config  # type: ignore # noqa: F821
c: ConfigContainer = c  # type: ignore # noqa: F821

# Load existing settings made via :set
config.load_autoconfig()

# DRACULA THEME !!!!
import dracula.draw

dracula.draw.blood(c, {"spacing": {"vertical": 6, "horizontal": 8}})

c.url.start_pages = "file:///home/nf/.config/qutebrowser/startpage/index.html"
c.url.default_page = "file:///home/nf/.config/qutebrowser/startpage/index.html"

# Dark mode yo
c.colors.webpage.darkmode.enabled = True
c.colors.webpage.preferred_color_scheme = "dark"

# Default zoom to 125%
c.zoom.default = 125

# Search engines
c.url.searchengines = {
    "DEFAULT": "https://search.brave.com/search?q={}",
    "g": "https://google.com/search?q={}",
    "s": "https://www.startpage.com/do/dsearch?query={}",
    "ddg": "https://duckduckgo.com/?q={}",
    "y": "https://yandex.ru/search/?text={}",
    "a": "https://wiki.archlinux.org/index.php?search={}",
    "yt": "https://youtube.com/results?search_query={}",
    "gh": "https://github.com/search?q={}",
    "l": "https://cyberleninka.ru/search?q={}&page=1",
}

# Disable autoplay
c.content.autoplay = False

# Ru keybindings fix-ish
c.bindings.key_mappings = {
    "Й": "Q",
    "й": "q",
    "Ц": "W",
    "ц": "w",
    "У": "E",
    "у": "e",
    "К": "R",
    "к": "r",
    "Е": "T",
    "е": "t",
    "Н": "Y",
    "н": "y",
    "Г": "U",
    "г": "u",
    "Ш": "I",
    "ш": "i",
    "Щ": "O",
    "щ": "o",
    "З": "P",
    "з": "p",
    "Х": "{",
    "х": "[",
    "Ъ": "}",
    "ъ": "]",
    "Ф": "A",
    "ф": "a",
    "Ы": "S",
    "ы": "s",
    "В": "D",
    "в": "d",
    "А": "F",
    "а": "f",
    "П": "G",
    "п": "g",
    "Р": "H",
    "р": "h",
    "О": "J",
    "о": "j",
    "Л": "K",
    "л": "k",
    "Д": "L",
    "д": "l",
    "Ж": ":",
    "ж": ";",
    "Э": '"',
    "э": "'",
    "Я": "Z",
    "я": "z",
    "Ч": "X",
    "ч": "x",
    "С": "C",
    "с": "c",
    "М": "V",
    "м": "v",
    "И": "B",
    "и": "b",
    "Т": "N",
    "т": "n",
    "Ь": "M",
    "ь": "m",
    "Б": "<",
    "б": ",",
    "Ю": ">",
    "ю": "\\",
    ".": "/",
}
config.unbind(".")
config.bind("\\", "repeat-command")

# pass keys
config.bind("<z><l>", 'spawn --userscript qute-pass -U secret -u "user: (.+)"')
config.bind(
    "<z><u><l>",
    'spawn --userscript qute-pass --username-only -U secret -u "user: (.+)"',
)
config.bind(
    "<z><p><l>",
    'spawn --userscript qute-pass --password-only -U secret -u "user: (.+)"',
)
config.bind(
    "<z><o><l>", 'spawn --userscript qute-pass --otp-only -U secret -u "user: (.+)"'
)

# mpv & ytdl keys
config.bind(
    "zydd",
    "spawn youtube-dl -f 'bestvideo[ext=mp4][width<=1920][height<=1080]+bestaudio[ext=m4a]/bestvideo+bestaudio' -o '~/Videos/YouTube/%(title)s - %(uploader)s' {url}",
)
config.bind(
    "zyda",
    "spawn youtube-dl -x --audio-format mp3 -f 'bestaudio[ext=m4a]/bestaudio' '~/Videos/YouTube/%(title)s - %(uploader)s' {url}",
)
config.bind("zyf", "hint links spawn -d mpv --keep-open=yes {hint-url}")
config.bind("zyy", "spawn -d mpv {url}")
config.bind("zyY", "spawn -d mpv --ytdl-format= {url}")
config.bind("zysy", "spawn -d mpv --shuffle {url}")
config.bind("zya", "spawn -d mpv --no-video {url}")
config.bind("zysa", "spawn -d mpv --shuffle --no-video {url}")

# other keys
config.bind(
    "zx",
    "config-cycle statusbar.show always never;; config-cycle tabs.show multiple never",
)

config.bind("zd", "download-open")

config.bind("zt", "set-cmd-text -s :tab-take")

config.bind("zsw", "set-cmd-text -s :session-save --only-active-window ")
config.bind("zss", "set-cmd-text -s :session-load ")
config.bind("zsd", "set-cmd-text -s :session-delete ")

config.bind("<Alt-Left>", "back")
config.bind("<Alt-Right>", "forward")

config.bind("<Ctrl-m>", "command-accept", mode="command")
config.bind("<Ctrl-h>", "rl-backward-delete-char", mode="command")
config.bind("<Ctrl-k>", "completion-item-focus prev", mode="command")
config.bind("<Ctrl-j>", "completion-item-focus next", mode="command")

config.bind("<Ctrl-m>", "command-accept", mode="prompt")
config.bind("<Ctrl-h>", "rl-backward-delete-char", mode="prompt")
config.bind("<Ctrl-k>", "completion-item-focus prev", mode="prompt")
config.bind("<Ctrl-j>", "completion-item-focus next", mode="prompt")

c.editor.command = ["alacritty", "-e", "sh", "-c", "sleep 0.1 && nvim {}"]
config.bind("<Alt-e>", "edit-text", mode="insert")
config.bind("<Alt-у>", "edit-text", mode="insert")

config.bind("<Ctrl-m>", "fake-key <Enter>", mode="insert")

config.bind("<Ctrl-j>", "fake-key <Down>", mode="insert")
config.bind("<Ctrl-k>", "fake-key <Up>", mode="insert")

config.bind("<Ctrl-d>", "fake-key <Delete>", mode="insert")
config.bind("<Alt-d>", "fake-key <Control-Delete>", mode="insert")
config.bind("<Alt-в>", "fake-key <Control-Delete>", mode="insert")
config.bind("<Ctrl-h>", "fake-key <Backspace>", mode="insert")
config.bind("<Ctrl-w>", "fake-key <Control-Backspace>", mode="insert")

config.bind("<Ctrl-f>", "fake-key <Right>", mode="insert")
config.bind("<Ctrl-b>", "fake-key <Left>", mode="insert")
config.bind("<Alt-f>", "fake-key <Control-Right>", mode="insert")
config.bind("<Alt-а>", "fake-key <Control-Right>", mode="insert")
config.bind("<Alt-b>", "fake-key <Control-Left>", mode="insert")
config.bind("<Alt-и>", "fake-key <Control-Left>", mode="insert")

config.bind("<Alt-a>", "fake-key <Ctrl-a>", mode="insert")
config.bind("<Alt-ф>", "fake-key <Ctrl-a>", mode="insert")
config.bind("<Ctrl-a>", "fake-key <Home>", mode="insert")
config.bind("<Ctrl-e>", "fake-key <End>", mode="insert")

# ---
# some weird hacks down there all since the start
# ---

# Cookies
config.set("content.cookies.accept", "all", "chrome-devtools://*")
config.set("content.cookies.accept", "all", "devtools://*")

# Pretending to be chrome and firefox
config.set(
    "content.headers.user_agent",
    "Mozilla/5.0 ({os_info}; rv:71.0) Gecko/20100101 Firefox/71.0",
    "https://accounts.google.com/*",
)
config.set(
    "content.headers.user_agent",
    "Mozilla/5.0 ({os_info}) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99 Safari/537.36",
    "https://*.slack.com/*",
)
config.set(
    "content.headers.user_agent",
    "Mozilla/5.0 ({os_info}; rv:71.0) Gecko/20100101 Firefox/71.0",
    "https://docs.google.com/*",
)
config.set(
    "content.headers.user_agent",
    "Mozilla/5.0 ({os_info}; rv:71.0) Gecko/20100101 Firefox/71.0",
    "https://drive.google.com/*",
)
config.set(
    "content.headers.user_agent",
    "Mozilla/5.0 ({os_info}; rv:81.0) Gecko/20100101 Firefox/71.0",
    "*",
)

# Load images automatically in web pages.
config.set("content.images", True, "chrome-devtools://*")
config.set("content.images", True, "devtools://*")

# Enable JavaScript.
config.set("content.javascript.enabled", True, "chrome-devtools://*")
config.set("content.javascript.enabled", True, "devtools://*")
config.set("content.javascript.enabled", True, "qute://*/*")
