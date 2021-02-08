# Autogenerated config.py
#
# NOTE: config.py is intended for advanced users who are comfortable
# with manually migrating the config file on qutebrowser upgrades. If
# you prefer, you can also configure qutebrowser using the
# :set/:bind/:config-* commands without having to write a config.py
# file.
#
# Documentation:
#   qute://help/configuring.html
#   qute://help/settings.html

import dracula.draw

# DRACULA THEME !!!!

# Load existing settings made via :set
config.load_autoconfig()

dracula.draw.blood(c, {
    'spacing': {
        'vertical': 6,
        'horizontal': 8
    }
})

c.url.start_pages = "file:///home/nf/.config/qutebrowser/startpage/index.html"
c.url.default_page = "file:///home/nf/.config/qutebrowser/startpage/index.html"

# Dark mode yo
c.colors.webpage.darkmode.enabled = True
c.colors.webpage.prefers_color_scheme_dark = True

# Default zoom to 125%
c.zoom.default = 125

# Search engines
c.url.searchengines = {"DEFAULT": "https://google.com/search?q={}",
                       "ddg": "https://duckduckgo.com/?q={}",
                       "y": "https://yandex.ru/search/?text={}",
                       "a": "https://wiki.archlinux.org/index.php?search={}",
                       "s": "https://searx.monicz.pl?q={}",
                       "yt": "https://youtube.com/results?search_query={}",
                       "gh": "https://github.com/search?q={}"}

# Disable autoplay
c.content.autoplay = False

# Ru keybindings fix-ish
c.bindings.key_mappings = {
    'Й': 'Q', 'й': 'q',
    'Ц': 'W', 'ц': 'w',
    'У': 'E', 'у': 'e',
    'К': 'R', 'к': 'r',
    'Е': 'T', 'е': 't',
    'Н': 'Y', 'н': 'y',
    'Г': 'U', 'г': 'u',
    'Ш': 'I', 'ш': 'i',
    'Щ': 'O', 'щ': 'o',
    'З': 'P', 'з': 'p',
    'Х': '{', 'х': '[',
    'Ъ': '}', 'ъ': ']',
    'Ф': 'A', 'ф': 'a',
    'Ы': 'S', 'ы': 's',
    'В': 'D', 'в': 'd',
    'А': 'F', 'а': 'f',
    'П': 'G', 'п': 'g',
    'Р': 'H', 'р': 'h',
    'О': 'J', 'о': 'j',
    'Л': 'K', 'л': 'k',
    'Д': 'L', 'д': 'l',
    'Ж': ':', 'ж': ';',
    'Э': '"', 'э': '\'',
    'Я': 'Z', 'я': 'z',
    'Ч': 'X', 'ч': "x",
    'С': 'C', 'с': "c",
    'М': 'V', 'м': "v",
    'И': 'B', 'и': "b",
    'Т': 'N', 'т': "n",
    'Ь': 'M', 'ь': "m",
    'Б': '<', 'б': ",",
    'Ю': '>', 'ю': '\\',
    '.': '/',
}
config.unbind('.')
config.bind('\\', 'repeat-command')

# Bindings for normal mode
config.bind(
    'zydd', "spawn youtube-dl -f 'bestvideo[ext=mp4][width<=1920][height<=1080]+bestaudio[ext=m4a]/bestvideo+bestaudio' -o '~/Videos/YouTube/%(title)s - %(uploader)s' {url}")
config.bind(
    'zyda', "spawn youtube-dl -x --audio-format mp3 -f 'bestaudio[ext=m4a]/bestaudio' '~/Videos/YouTube/%(title)s - %(uploader)s' {url}")
config.bind('zyf', 'hint links spawn mpv --keep-open=yes {hint-url}')
config.bind('zyy', 'spawn mpv {url}')
config.bind('zyY', 'spawn mpv --ytdl-format= {url}')
config.bind('zysy', 'spawn mpv --shuffle {url}')
config.bind('zya', 'spawn mpv --no-video {url}')
config.bind('zysa', 'spawn mpv --shuffle --no-video {url}')

config.bind(
    'zx', 'config-cycle statusbar.show always never;; config-cycle tabs.show multiple never')

config.bind('zp', 'config-cycle content.private_browsing true false')

config.bind('zd', 'download-open')

config.bind('zt', 'set-cmd-text -s :tab-take')

config.bind('zcc', 'set content.user_stylesheets \'\'')
config.bind('zca', 'set content.user_stylesheets ~/.config/qutebrowser/solarized-everything-css/css/apprentice/apprentice-all-sites.css')
config.bind('zcg', 'set content.user_stylesheets ~/.config/qutebrowser/solarized-everything-css/css/gruvbox/gruvbox-all-sites.css')
config.bind('zcd', 'set content.user_stylesheets ~/.config/qutebrowser/solarized-everything-css/css/darculized/darculized-all-sites.css')
config.bind('zcs', 'set content.user_stylesheets ~/.config/qutebrowser/solarized-everything-css/css/solarized-light/solarized-light-all-sites.css')
config.bind('zcx', 'set content.user_stylesheets ~/.config/qutebrowser/solarized-everything-css/css/solarized-dark/solarized-dark-all-sites.css')

config.bind('zsn', 'set-cmd-text -s :session-save --only-active-window ')
config.bind('zss', 'set-cmd-text -s :session-load ')
config.bind('zsd', 'set-cmd-text -s :session-delete ')


# These were here by default . . .

# Cookies
config.set('content.cookies.accept', 'all', 'chrome-devtools://*')
config.set('content.cookies.accept', 'all', 'devtools://*')

# Pretending to be chrome and firefox
config.set('content.headers.user_agent',
           'Mozilla/5.0 ({os_info}; rv:71.0) Gecko/20100101 Firefox/71.0', 'https://accounts.google.com/*')

config.set('content.headers.user_agent',
           'Mozilla/5.0 ({os_info}) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99 Safari/537.36', 'https://*.slack.com/*')

config.set('content.headers.user_agent',
           'Mozilla/5.0 ({os_info}; rv:71.0) Gecko/20100101 Firefox/71.0', 'https://docs.google.com/*')

config.set('content.headers.user_agent',
           'Mozilla/5.0 ({os_info}; rv:71.0) Gecko/20100101 Firefox/71.0', 'https://drive.google.com/*')

config.set('content.headers.user_agent',
           'Mozilla/5.0 ({os_info}; rv:81.0) Gecko/20100101 Firefox/71.0', '*')

# Load images automatically in web pages.
# Type: Bool
config.set('content.images', True, 'chrome-devtools://*')

# Load images automatically in web pages.
# Type: Bool
config.set('content.images', True, 'devtools://*')

# Enable JavaScript.
# Type: Bool
config.set('content.javascript.enabled', True, 'chrome-devtools://*')

# Enable JavaScript.
# Type: Bool
config.set('content.javascript.enabled', True, 'devtools://*')

# Enable JavaScript.
# Type: Bool
config.set('content.javascript.enabled', True, 'chrome://*/*')

# Enable JavaScript.
# Type: Bool
config.set('content.javascript.enabled', True, 'qute://*/*')

# Allow websites to show notifications.
# Type: BoolAsk
# Valid values:
#   - true
#   - false
#   - ask
config.set('content.notifications', True, 'https://www.youtube.com')
