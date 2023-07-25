{ config, pkgs,  ... }:

  # List packages installed in system profile. To search, run:
  # $ nix search wget

let unstable = import <unstable> {};
in { 
  nixpkgs.config.allowUnfree = true;
#  nixpkgs.config.permittedInsecurePackages = [
#    "libgit2-0.27.10"
#    "python3.9-mistune-0.8.4"
#  ];

  environment.systemPackages = with pkgs; [
#    adb-sync # android
#    adbfs-rootless# android
#    android-studio# android
#    android-file-transfer# android
#    appimagekit
    appimage-run
#    apostrophe
#    arcan.durden
#    arcan.arcan
    archivemount # mounting of cpio, .tar.gz, .tar.bz2
    aria2 # загрузчик
    aspell # правописание
    aspellDicts.en # правописание
    aspellDicts.ru # правописание
    aspellDicts.uk # правописание
    atool # монтирование архивов 
    autojump # быстрый переход в командной оболочке
    avfs # монтирование архивов
    bat # подсветка синтаксиса
#    beets # метаданные музики
    bleachbit # чистка от мусора no guix
    btrfs-progs # работа с файловой системой btrfs
    calibre # библиотека книг old wer guix
    catdoc # конвертирование документов Майкрософт Офис в текст
    chromium # веб браузер
    cmake  # для разрабочиков ПО
    conda # conda-shell, conda-install
#    micromamba # усовершенстванная conda
    conky #  отображение информационных панелей
#    coolreader # no guix
    copyq # продвинутый менеджер буфера обмена
    coreutils 
    crow-translate # онлайн перевод выделенного текста no guix  
    curl # загрузка  с интернета
    czmq
    cppzmq
    zmqpp
    czkawka #поиск дубликатов,  похожих  и ненужных файлов no guix
    dconf
    gnome.dconf-editor
    deadbeef # медиаплеер и конвертор музыки no guix
    djvu2pdf # конвертор djvu в pdf
    djvulibre # работа з djvu
    dmenu # мени для х11
    docker # контейнер docker 
    docker-compose # контейнер docker
    emacs # мощный редактор написаний на лиспе
    epick #color picker no guix
    easytag
    ffmpeg-full # работа с видео
    ffmpegthumbnailer # скины видео
    file # информация о типе файла
    flameshot # получение скриншотов no guix
    font-manager # менеджер шрифтов no guix
    fontpreview # nnn depend optinal viewer  no guix
    fzf #cmd fuzzy finder
    feh # просмотр изображений
#    gcc # для разрабочиков ПО
#    firefox-esr #  no guix
    gcc_multi # для разрабочиков ПО
    ghostwriter # 
    gimp-with-plugins # графический редактор Gimp
    gitFull # git
    go
    glib
    glow #Render markdown on the CLI, nnn view no guix
    gmrun #удобный запуск программ
    gnumake # для разрабочиков ПО
    gnome.zenity # gui диалоги
    gtdialog # gui диалоги
    gtk-pipe-viewer
    #gnome.gnome-keyring
    gparted # редактирование разделов диска
#    groff # обработка текста
    gv #x11 ghostscript
    highlight #подсветка текста
    home-manager # конфигурация пользовательского профиля Nixos
#    hplipWithPlugin
    htmlq
    htop # просмотр процессов
    hunspellDicts.en-us
    hunspellDicts.ru-ru 
    hunspellDicts.uk-ua
    imagemagick # обрабока изображений
    inetutils
    jbig2enc # no guix
    jbig2dec
    jp # for cli view json no guix
    jgmenu # меню запуска программ
#    joplin # заметки
#    joplin-desktop # заметки
    keepassxc # менеджер паролей 
    killall # завершение процессов
    kitty # терминал с отображением графики
#    konsole #   
    lame # конвертирование медиа кодек
    libnotify # сообщения нотификации
    libreoffice # бесплатный офис
#    libuchardet # библиотека распознавания символов
    lsof # просмотр открытих файлов
    lm_sensors 
    lshw
#    lua51Packages.lua-iconv
    mediainfo # информация о медиафайлах
    miller # обработка файлов csv, json ...no guix
    mktemp # nnn viewer depend no guix
    mpv # видеоплеер
    mupdf # обработка pdf
    mysql # sql сервер??
    cinnamon.nemo #no guix 
    ncurses # создание tui 
    nethogs
    nerdfonts # шрифты
    navi #шпаргалка
    nodejs
    odt2txt # преобразование документов libreoffice в текст
    okular # просмотр документов
#    obsidian # база заметок 
    p7zip # архиватор
    pandoc
    perl536Packages.FileMimeInfo #mimeopen mimeinfo
    picom # композитор для оконых менеджеров
    picard # медиатеги
    pistol # для просмотра файлов no guix
    php # программирование сайтовa
    physlock # optional nnn, alternative vlock
    pmount # монтирование дисков
    polybarFull
    postgresql # сервер базы данных
    poppler # обработка pdf
#    unpapper
    pragha
    python39Full
    python39Packages.py3status
    python39Packages.beautifulsoup4
    python39Packages.ipython
    python39Packages.ocrmypdf #no guix
    python39Packages.txzmq
    python39Packages.pyzmq
    qemu # емулятор виртуальной машины
    qutebrowser
#    recoll # локальний поиск текста
    rakudo
    rofi # меню для запуска программ
    ruby # язык программирования
#    sayonara # библиотека музыки no guix
    scrot # скриншоты (скрипт bash)
    sftpman # sshfs/sftp mount no guix
    sigil # редактор книг epub no guix
    signal-desktop
#    sioyek #no guix
#    smenu # выбор файлов в терминале
    sqlite # работа з базой данных
    sqlitebrowser # просмотр базы данных
    sshfs # for nnn fuse mount over ssh
    sxiv # просмотр изображений
    system-config-printer
    tcpdump
    tdesktop # Telegram-Desktop
    terminus_font # шрифт
    terminus_font_ttf # шрифт
#    thiefmd
    trash-cli # trash for nnn
    tree # просмотр дерева каталогов
    trilium-desktop
    unrar #архиватор
#    ueberzug
#    fzf-zsh #u
#    clifm # терминальный файловый менеджер no guix
    unzip # архиватор
    usbutils # работа с usb
    util-linux # разные полезные утититы
#    vifm-full # текстовый редактор
    vim_configurable # текстовый редактор
    virt-manager # менеджер виртуальних машин
    w3m # тестовый интернет браузер
    wget # хагрузка файлов с сети
    xsane # работа со сканером
    you-get # загрузка видео
    youtube-dl # загрузка видео
    zip # архиватор
    zef
    zoom # мессенджер no guix
    zathura # просмотр pdf
  ];
  

}
