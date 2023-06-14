import os
import shutil

for cfg_file in [ "quickmarks", "bookmarks/urls", 
                 "userscripts/crow", "userscripts/ipython",
                 "userscripts/kitty", "userscripts/node",
                 "userscripts/tgmsg.py"] :

        # Проверка наличия файла в целевом каталоге
        if not os.path.exists("/home/andrey/.config/qutebrowser/"+cfg_file):
            # Копирование файла из исходного места в целевой каталог
            shutil.copyfile("/nixos/net/qutebrowser/"+cfg_file, "/home/andrey/.config/qutebrowser/"+cfg_file)



#print spell dictionary
#aliases
c.aliases = {'w': 'session-save',
             'q': 'close',
             'qa': 'quit',
             'wq': 'quit --save',
             'wqa': 'quit --save',
             'aria':'hint links run :spawn -m aria2c "{hint-url}"',
             'tiddly-cooking':'spawn -d tiddlywiki ~/Документы/tiddlywiki/cooking --listen port=7770',
             }

c.auto_save.session = True

c.colors.webpage.darkmode.algorithm = 'lightness-cielab'
c.colors.webpage.darkmode.enabled = False
c.colors.webpage.darkmode.policy.page = 'smart'
c.colors.webpage.preferred_color_scheme = 'auto'

c.completion.open_categories = ['searchengines',  'history', 'filesystem']

c.content.default_encoding = 'utf-8'
c.content.pdfjs = True
c.content.plugins = True

c.downloads.location.suggestion = 'both'
c.downloads.position = 'bottom'

c.editor.command = ['gvim', '-f', '{file}', '-c', 'normal {line}G{column0}l']

c.spellcheck.languages = ['en-US','ru-RU','uk-UA']

c.tabs.mousewheel_switching = False

c.url.default_page = 'qute://help/index.html'
c.url.start_pages = ['qute://help/index.html']

c.window.title_format = '{perc}{current_title}'




c.hints.mode='number'
c.hints.selectors = {'all': ['a', 'area', 'textarea', 'select', 'input:not([type="hidden"])', 'button', 'frame', 'iframe', 'img', 'link', 'summary', '[contenteditable]:not([contenteditable="false"])', '[onclick]', '[onmousedown]', '[role="link"]', '[role="option"]', '[role="button"]', '[ng-click]', '[ngClick]', '[data-ng-click]', '[x-ng-click]', '[tabindex]'],
                     'links': ['a[href]', 'area[href]', 'link[href]', '[role="link"][href]'],
                     'images': ['img'], 'media': ['audio', 'img', 'video'], 'url': ['[src]', '[href]'],
                     'inputs': ['input[type="text"]', 'input[type="date"]','input[type="datetime-local"]', 'input[type="email"]', 'input[type="month"]', 'input[type="number"]', 'input[type="password"]', 'input[type="search"]', 'input[type="tel"]', 'input[type="time"]', 'input[type="url"]', 'input[type="week"]', 'input:not([type])', '[contenteditable]:not([contenteditable="false"])', 'textarea'],
                     'tgmsg': ['div.Message'],
                     'test': ['div.fp-playlist']
                     #i.icon-share-filled'] 
                     }



c.url.open_base_url = True 
c.url.searchengines = {
                'DEFAULT': 'localhost:5000/search?q={}',
                'wh': 'localhost:5000/search?q={}',
                'g' : 'https://www.google.com/search?q={}',
                'd' : 'https://duckduckgo.com/?q={}',
                'b': 'https://global.bing.com/search?setmkt=en-us&setlang=en-us&q={}',
                'mg':  'https://metager3.de/en/meta/meta.ger3?eingabe={}', 
                'gb': 'http://www.gigablast.com/search?c=main&qlangcountry=en-us&q={}',
                'q': 'https://www.qwant.com/?client=opensearch&q={}',
                'lk': 'https://www.lukol.com/s.php?q=#gsc.tab=0&gsc.page=1&gsc.q={}',
                'sw': 'https://swisscows.com/web?culture=ru&region=iv&query={}',
                #AI
                'ay': 'https://you.com/search?&tbm=youchat&cfr=chat&q={}',
                'ap': 'https://www.perplexity.ai/search?q={}',
                'aw': 'https://www.wolframalpha.com/input?i={}',
                #IT
                'so':  'http://stackoverflow.com/search?q={}',
                'gh': 'https://github.com/search?q={}', 
                'io': 'https://libraries.io/search?q={}',
                #медиа
                'yt': 'https://www.youtube.com/results?search_query={}',
                'fl': 'https://www.flickr.com/search/?text={}',
                'v': 'https://vimeo.com/search?q={}',
                #вики
                'we': 'https://en.wikipedia.org/wiki/{}',
                'wu': 'https://uk.wikipedia.org/wiki/{}',
                'wr': 'https://ru.wikipedia.org/wiki/{}',
                'wa': 'https://wiki.archlinux.org/index.php?title=Special:Search&search={}',
                #файлы
                'rt': 'https://global.bing.com/search?setmkt=en-us&setlang=en-us&q=!site:rutracker.org {}', 
                'lg': 'http://gen.lib.rus.ec/search.php?view=simple&res=25&phrase=1&column=def&page=1&req={}', 
                #social
                'bl': 'http://www.blogsearchengine.org/search.html?q={}',
                'ss': 'https://www.social-searcher.com/social-buzz/?q5={}',
                #переводчики и словари
                'gt': 'https://translate.google.com/#view=home&op=translate&sl=auto&tl=ru&text={}'
                }


#
# НАЗНАЧЕНИЯ КЛАВИШ
#



#відкриття url, кешу, вебархіву, дії з url (в цій же вкладці, іншій, приватній, вікні),downloads
d_open_url={
'set-cmd-text -s :open -t' : ['o','щ'],
'set-cmd-text -s :open' : ['O','Щ'],
'set-cmd-text -s :open -w' : ['wo','цщ'],
'set-cmd-text -s :open -p' : ['po','зщ'],
'set-cmd-text -s :open -b' : ['pb','зи'],
}


#відкриття посилань, кешу,вебархіву, дії з посиланнями  (в цій же вкладці, іншій, приватній, вікні),downloads
d_hints={
'hint images tab' : [';i','жш'],
'hint images' : [';I','жШ'],
'hint links fill :open -t -r {hint-url}' : [';o','жщ'],
'hint links fill :open {hint-url}' : [';O','жЩ'],
'hint links yank' : [';y','жн'],
'hint links yank-primary' : [';Y','жН'],
'hint all tab-bg' : [';b','жи'],
'hint links download' : [';d','жв'],
'hint all tab' : ['F','жА'],
'hint all tab-fg' : [';f','жа'],
'hint --rapid links tab-bg' : [';r','жк'],
'hint all hover' : [';h','жн'],
'hint inputs' : [';t','же'],
'hint' : ['f','а'],
'hint inputs --first' : ['gi','пш'],
 }


#вибір інших елементів сторінки та дії з ними.   
#процеси та запуск різних програм,userscripts,javascripts
#робота з вкладками
d_tabs={
'tab-focus 1' : ['<Alt-1>',''],
'tab-focus 2' : ['<Alt-2>',''],
'tab-focus 3' : ['<Alt-3>',''],
'tab-focus 4' : ['<Alt-4>',''],
'tab-focus 5' : ['<Alt-5>',''],
'tab-focus 6' : ['<Alt-6>',''],
'tab-focus 7' : ['<Alt-7>',''],
'tab-focus 8' : ['<Alt-8>',''],
'tab-focus -1' : ['<Alt-9>',''],
'tab-next' : ['t<Right>','е<Right>'],
'tab-prev' : ['t<Left>','е<Left>'],
'tab-focus last' : ['t ','е '],
'tab-pin' : ['tp','ез'],
'tab-close' : ['x','ч'],
'tab-close -o' : ['X','Ч'],
'set-cmd-text -sr :tab-focus' : ['tt','ее'],
'tab-only' : ['to','ещ'],
'tab-focus -1' : ['t$','е;'],
'tab-focus 1' : ['t0','t^','е0','е:'],
'tab-clone' : ['tc','ес'],
'tab-give -p' : ['tg','еп'],
'set-cmd-text -s :tab-take' : ['tw','ец'],

'tab-move' : ['tm','еь'],
'tab-mute' : ['ts','еі'],
}
#робота з вікнами
#d_windows={
#'open -w' : ['<Ctrl-N>',''],
#}
#bookmarks and quwickmarks
d_bookmarks={
'home' : ['~'],
'set-cmd-text -s :quickmark-load -t' : ['b','и'],
'set-cmd-text -s :quickmark-load' : ['B','И'],
'set-cmd-text -s :bookmark-load -t' : ['gb','пи'],
'set-cmd-text -s :bookmark-load' : ['gB','пИ'],
'quickmark-save' : ['m','ь'],
'bookmark-add' : ['M','Ь'],
'bookmark-list' : ['gq','пй'],
}

#history,parts url, labels next/previus
d_history={
'navigate decrement' : ['gu+','пг+'],
'navigate increment' : ['gu-','пг_'],
'back' : ['h<left>','р<left>'],
'forward' : ['h<Right>','р<Right>'],
'navigate prev' : ['[[','хх'],
'navigate next' : [']]','її'],
'navigate prev -t' : ['{{','ХХ'],
'navigate next -t' : ['}}','ЇЇ'],
'history' : ['hh','рр'],
'navigate up -t' : ['gu<Up>','пг<Up>'],
'back -w' : ['hw<Left>','рц<Left>'],
'scroll-to-perc 0' : ['gg','пп'],
'navigate up' : ['gU<Up>','пГ<Up>'],
'forward -w' : ['hw<Right>','рц<Right>'],
'sCroll-to-perc' : ['G','П'],
}
#zoom
d_zoom={
'zoom-in' : ['+',''],
'zoom-out' : ['-',''],
'zoom' : ['=',''],
}
#clipboard
d_clipboard={
'yank domain' : ['yd','нв'],
'yank domain -s' : ['Yd','Нв'],
'yank inline [{title}]({url})' : ['ym','нь'],
'yank inline [{title}]({url}) -s' : ['Ym','Нь'],
'yank pretty-url' : ['yp','нз'],
'yank pretty-url -s' : ['Yp','Нз'],
'yank title' : ['yt','не'],
'yank title -s' : ['Yt','Не'],
'yank' : ['yy','нн'],
'yank -s' : ['YY','НН'],
}
#config
d_config={
'set-cmd-text -s :set -t' : ['ss','іі'],
'set-cmd-text -s :set' : ['SS','ІІ'],
'set-cmd-text -s :bind' : ['sb','іи'],
'set-cmd-text -s :set messages.timeout' : ['sm','іь'],
'config-cycle -p -u *://*.{url:host}/* content.cookies.accept all no-3rdparty never ;; reload' : ['TCH','ЕСР'],
'config-cycle -p -u *://{url:host}/* content.cookies.accept all no-3rdparty never ;; reload' : ['TCh','ЕСр'],
'config-cycle -p -u {url} content.cookies.accept all no-3rdparty never ;; reload' : ['TCu','ЕСг'],
'config-cycle -p -u *://*.{url:host}/* content.images ;; reload' : ['TIH','ЕШР'],
'config-cycle -p -u *://{url:host}/* content.images ;; reload' : ['TIh','ЕШр'],
'config-cycle -p -u {url} content.images ;; reload' : ['TIu','ЕШг'],
'config-cycle -p -u *://*.{url:host}/* content.plugins ;; reload' : ['TPH','ЕЗР'],
'config-cycle -p -u *://{url:host}/* content.plugins ;; reload' : ['TPh','ЕЗр'],
'config-cycle -p -u {url} content.plugins ;; reload' : ['TPu','ЕЗг'],
'config-cycle -p -u *://*.{url:host}/* content.javascript.enabled ;; reload' : ['TSH','ЕІР'],
'config-cycle -p -u *://{url:host}/* content.javascript.enabled ;; reload' : ['TSh','ЕІр'],
'config-cycle -p -u {url} content.javascript.enabled ;; reload' : ['TSu','ЕІг'],
'config-cycle -p -t -u *://*.{url:host}/* content.cookies.accept all no-3rdparty never ;; reload' : ['TcH','ЕсР'],
'config-cycle -p -t -u *://{url:host}/* content.cookies.accept all no-3rdparty never ;; reload' : ['Tch','Еср'],
'config-cycle -p -t -u {url} content.cookies.accept all no-3rdparty never ;; reload' : ['Tcu','Есг'],
'config-cycle -p -t -u *://*.{url:host}/* content.images ;; reload' : ['TiH','ЕшР'],
'config-cycle -p -t -u *://{url:host}/* content.images ;; reload' : ['Tih','Ешр'],
'config-cycle -p -t -u {url} content.images ;; reload' : ['Tiu','Ешг'],
'config-cycle -p -t -u *://*.{url:host}/* content.plugins ;; reload' : ['TpH','ЕзР'],
'config-cycle -p -t -u *://{url:host}/* content.plugins ;; reload' : ['Tph','Езр'],
'config-cycle -p -t -u {url} content.plugins ;; reload' : ['Tpu','Езг'],
'config-cycle -p -t -u *://*.{url:host}/* content.javascript.enabled ;; reload' : ['TsH','ЕіР'],
'config-cycle -p -t -u *://{url:host}/* content.javascript.enabled ;; reload' : ['Tsh','Еір'],
'config-cycle -p -t -u {url} content.javascript.enabled ;; reload' : ['Tsu','Еіг'],
}
#download
d_download={
'download-cancel' : ['da','вф'],
'download-delete' : ['dx','вч'],
'download-clear' : ['dc','вс'],
'download' : ['dd','вв'],
'download-open' : ['do','вщ'],
}
#other
d_other={
'repeat-command' : ['.','ю'],
'set-cmd-text /' : ['/',''],
'set-cmd-text :' : [':','Ж'],
'print' : ['<Ctrl-Alt-p>',''],
'quit' : ['<Ctrl-Q>',''],
'selection-follow' : ['<Ctrl-Return>',''],
'nop' : ['<Ctrl-Shift-Tab>',''],
'mode-enter passthrough' : ['<Ctrl-V>',''],
'stop' : ['<Ctrl-s>',''],
'clear-keychain ;; search ;; fullscreen --leave' : ['<Escape>',''],
'fullscreen' : ['<F11>',''],
'selection-follow -t' : ['<Return>',''],
'set-cmd-text ?' : ['?',''],
'macro-run' : ['@',''],
'quit' : ['ZQ','ЯЙ'],
'quit --save' : ['ЯЯ','ZZ'],
'undo -w' : ['U','Г'],
'mode-enter caret ;; selection-toggle --line' : ['V','М'],
'search-prev' : ['N','Т'],
'reload -f' : ['R','К'],
'view-source' : ['gf','па'],
'search-next' : ['n','т'],
'mode-enter insert' : ['i','ш'],
'macro-record' : ['q','й'],
'reload' : ['r','к'],
'save' : ['sf','іа'],
'undo' : ['u','г'],
'mode-enter caret' : ['v','м'],
'devtools-focus' : ['wIf','цШа'],
'devtools left' : ['wI<Left>','цШ<Left>'],
'devtools bottom' : ['wI<Down>','цШ<Down>'],
'devtools top' : ['wI<Up>','цШ<Up>'],
'devtools right' : ['wI<Right>','цШ<Right>'],
'devtools window' : ['wIw','цШц'],
'devtools' : ['wi','цш'],
'insert-text {clipboard}' : ['<Ctrl-V>',''],
}





# Bindings for caret mode
d_caret_mode={
'move-to-end-of-line' : ['$',''],
'move-to-start-of-line' : ['0',''],
'selection-drop' : ['<Ctrl-Space>',''],
'mode-leave' : ['<Escape>',''],
'yank selection' : ['<Return>',''],
'selection-toggle' : ['<Space>',''],
'move-to-end-of-document' : ['G','П'],
'scroll left' : ['<Ctrl-Left>',''],
'scroll down' : ['<Ctrl-Down>',''],
'scroll up' : ['<Ctrl-Up>',''],
'scroll right' : ['<Ctrl-Right>',''],
'selection-toggle --line' : ['V','М'],
'yank selection -s' : ['Y','Н'],
'move-to-start-of-prev-block' : ['[','х'],
'move-to-start-of-next-block' : [']','ї'],
'move-to-prev-word' : ['b','и'],
'mode-enter normal' : ['c','с'],
'move-to-end-of-word' : ['e','у'],
'move-to-start-of-document' : ['gg','пп'],
'move-to-prev-char' : ['<Left>',''],
'move-to-next-line' : ['<Down>',''],
'move-to-prev-line' : ['<Up>',''],
'move-to-next-char' : ['<Right>',''],
'selection-reverse' : ['o','щ'],
'selection-toggle' : ['v','м'],
'move-to-next-word' : ['w','ц'],
'yank selection' : ['y','н'],
'move-to-end-of-prev-block' : ['{','Х'],
'move-to-end-of-next-block' : ['}','Ї'],
}

# Bindings for command mode
#  сделать вставку стандартних макроопределений 
d_command_mode={
'rl-backward-word' : ['<Alt-B>',''],
'rl-backward-kill-word' : ['<Alt-Backspace>',''],
'rl-kill-word' : ['<Alt-D>',''],
'rl-forward-word' : ['<Alt-F>',''],
'rl-delete-char' : ['<Ctrl-?>',''],
'rl-beginning-of-line' : ['<Ctrl-A>',''],
'rl-backward-char' : ['<Ctrl-B>',''],
'completion-item-yank' : ['<Ctrl-C>',''],
'completion-item-del' : ['<Ctrl-D>',''],
'rl-end-of-line' : ['<Ctrl-E>',''],
'rl-forward-char' : ['<Ctrl-F>',''],
'rl-backward-delete-char' : ['<Ctrl-H>',''],
'rl-kill-line' : ['<Ctrl-K>',''],
'command-history-next' : ['<Ctrl-N>',''],
'command-history-prev' : ['<Ctrl-P>',''],
'command-accept --rapid' : ['<Ctrl-Return>',''],
'completion-item-yank --sel' : ['<Ctrl-Shift-C>',''],
'completion-item-focus prev-category' : ['<Ctrl-Shift-Tab>',''],
'rl-filename-rubout' : ['<Ctrl-Shift-W>',''],
'completion-item-focus next-category' : ['<Ctrl-Tab>',''],
'rl-unix-line-discard' : ['<Ctrl-U>',''],
'rl-rubout " "' : ['<Ctrl-W>',''],
'rl-yank' : ['<Ctrl-Y>',''],
'completion-item-focus --history next' : ['<Down>',''],
'mode-leave' : ['<Escape>',''],
'completion-item-focus next-page' : ['<PgDown>',''],
'completion-item-focus prev-page' : ['<PgUp>',''],
'command-accept' : ['<Return>',''],
'completion-item-del' : ['<Shift-Delete>',''],
'completion-item-focus prev' : ['<Shift-Tab>',''],
'completion-item-focus next' : ['<Tab>',''],
'completion-item-focus --history prev' : ['<Up>',''],
'set-cmd-text -a {url}' : ['<Alt+Space>u','<Alt+Space>г'], 
'set-cmd-text -a {url:pretty}' : ['<Alt+Space>w','<Alt+Space>ц'], 
'set-cmd-text -a {url:host}' : ['<Alt+Space>h','<Alt+Space>р'], 
'set-cmd-text -a {url:domain}' : ['<Alt+Space>d','<Alt+Space>в'], 
'set-cmd-text -a {url:query}' : ['<Alt+Space>q','<Alt+Space>й'], 
'set-cmd-text -a {url:port}' : ['<Alt+Space>p','<Alt+Space>з'], 
'set-cmd-text -a {title}' : ['<Alt+Space>t','<Alt+Space>е'], 
'set-cmd-text -a {clipboard}' : ['<Alt+Space>y','<Alt+Space>н'], 
'set-cmd-text -a {primary}' : ['<Alt+Space>s','<Alt+Space>і'], 
}

# Bindings for hint mode
d_hint_mode={
'hint all tab-bg' : ['<Ctrl-B>',''],
'hint links' : ['<Ctrl-F>',''],
'hint --rapid links tab-bg' : ['<Ctrl-R>',''],
'mode-leave' : ['<Escape>',''],
'hint-follow' : ['<Return>',''],
}

# Bindings for insert mode
d_insert_mode={
'edit-text' : ['<Ctrl-E>',''],
'mode-leave' : ['<Escape>',''],
'fake-key <Escape>' : ['<Shift-Escape>',''],
'insert-text -- {primary}' : ['<Shift-Ins>',''],
'spawn -m -u crow {primary}' : ['<Alt+Space>c','<Alt+Space>с'],
}

# Bindings for passthrough mode
d_passhtrough_mode={
'mode-leave' : ['<Shift-Escape>',''],
}

# open 

# Bindings for prompt mode
d_prompt_mode={
'rl-backward-word' : ['<Alt-B>',''],
'rl-backward-kill-word' : ['<Alt-Backspace>',''],
'rl-kill-word' : ['<Alt-D>',''],
'rl-forward-word' : ['<Alt-F>',''],
'prompt-yank --sel' : ['<Alt-Shift-Y>',''],
'prompt-yank' : ['<Alt-Y>',''],
'rl-delete-char' : ['<Ctrl-?>',''],
'rl-beginning-of-line' : ['<Ctrl-A>',''],
'rl-backward-char' : ['<Ctrl-B>',''],
'rl-end-of-line' : ['<Ctrl-E>',''],
'rl-forward-char' : ['<Ctrl-F>',''],
'rl-backward-delete-char' : ['<Ctrl-H>',''],
'rl-kill-line' : ['<Ctrl-K>',''],
'prompt-open-download --pdfjs' : ['<Ctrl-P>',''],
'rl-filename-rubout' : ['<Ctrl-Shift-W>',''],
'rl-unix-line-discard' : ['<Ctrl-U>',''],
'rl-rubout " "' : ['<Ctrl-W>',''],
'prompt-open-download' : ['<Ctrl-X>',''],
'rl-yank' : ['<Ctrl-Y>',''],
'prompt-item-focus next' : ['<Down>',''],
'mode-leave' : ['<Escape>',''],
'prompt-accept' : ['<Return>',''],
'prompt-item-focus prev' : ['<Shift-Tab>',''],
'prompt-item-focus next' : ['<Tab>',''],
'prompt-item-focus prev' : ['<Up>',''],
}


# Bindings for yesno mode
d_yesno_mode={
'prompt-yank --sel' : ['<Alt-Shift-Y>',''],
'prompt-yank' : ['<Alt-Y>',''],
'mode-leave' : ['<Escape>',''],
'prompt-accept' : ['<Return>',''],
'prompt-accept --save no' : ['N'],
'prompt-accept --save yes' : ['Y'],
'prompt-accept no' : ['n'],
'prompt-accept yes' : ['y'],
}

d_spawn={
'set-cmd-text -s :spawn' : ['!!',''],
'spawn kitty nnn -a' : ['!n','!ь'],
'spawn kitty' : ['!t','!е'],
'aria' : ['!a','!ф'],
'set-cmd-text -s :spawn ffmpeg -i {clipboard}' : ['!f','!а'],
'spawn chromium {url}' : ['c!','с!'],
#'' : ['!','!'],
#'' : ['!','!'],
#'' : ['!','!'],
#'' : ['!','!'],
}

d_my_other={
'hint tgmsg userscript tgmsg.py' : [',<Space>','б<Space>'],
"jseval window.location.href= '{url:domain}'.replace(/\./g,\"-\")+'.translate.goog'+'{url:path}'+'?_x_tr_sl=auto&_x_tr_tl=ru&_x_tr_hl=uk&_x_tr_pto=wapp'" : [',t','бе'],
'spawn -m -u crow {primary}' : [',c','бс'],
#'' : [',','б'],
#'' : [',','б'],
#'' : [',','б'],
#'' : [',','б'],
#'' : [',','б'],
}


def d_bind(d,m):
    for c, k_l in d.items():
        for k in k_l:
            if k:
                config.bind(k,c,mode=m)


c.bindings.default={}
for d in [d_open_url,d_hints,d_tabs,d_history,d_clipboard,d_bookmarks,d_zoom,d_config,d_download,d_other]:
    d_bind(d,'normal')
d_bind(d_caret_mode,'caret')
d_bind(d_command_mode,'command')
d_bind(d_hint_mode,'hint')
d_bind(d_insert_mode,'insert')
d_bind(d_passhtrough_mode,'passthrough')
d_bind(d_prompt_mode,'prompt')
d_bind(d_yesno_mode,'yesno')
d_bind(d_spawn,'normal')
d_bind(d_my_other,'normal')

config.load_autoconfig()

