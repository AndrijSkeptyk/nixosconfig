{ config, pkgs,  ... }:

  # List packages installed in system profile. To search, run:
  # $ nix search wget

let unstable = import <unstable> {};
in { 
  nixpkgs.config.allowUnfree = true;
  nixpkgs.config.permittedInsecurePackages = [
    "libgit2-0.27.10"
    "python3.9-mistune-0.8.4"
  ];

  environment.systemPackages = with pkgs; [
#    adb-sync # android
#    adbfs-rootless# android
#    android-studio# android
#    android-file-transfer# android
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
    bleachbit # чистка от мусора
    btrfs-progs # работа с файловой системой btrfs
    calibre # библиотека книг
    calibre-web # удобны веб-интерфейс к  calibre
    catdoc # конвертирование документов Майкрософт Офис в текст
    chromium # веб браузер
#    clementine # библиотека музыки
    cmake  # для разрабочиков ПО
    conda
    conky #  отображение информационных панелей
    copyq # продвинутый менеджер буфера обмена
    crow-translate # онлайн перевод выделенного текста
    curl # загрузка  с интернета
    czkawka #поиск дубликатов,  похожих  и ненужных файлов
    deadbeef # медиаплеер и конвертор музыки
    djvulibre # работа з djvu
    dmenu # мени для х11
    docker # контейнер docker 
    docker-compose # контейнер docker
    emacs # мощный редактор написаний на лиспе
    epick #color picker
    ffmpeg-full # работа с видео
    ffmpegthumbnailer # скины видео
    file # информация о типе файла
    flameshot # получение скриншотов
    font-manager # менеджер шрифтов
    fzf #cmd fuzzy finder
    feh # просмотр изображений
#    gcc # для разрабочиков ПО
    gcc_multi # для разрабочиков ПО
    gimp-with-plugins # графический редактор Gimp
    gitFull # git
    go
    #glow #Render markdown on the CLI
    gmrun #удобный запуск программ
    gnumake # для разрабочиков ПО
    #gnome.gnome-keyring
    gparted # редактирование разделов диска
#    groff # обработка текста
    gv #x11 ghostscript
    highlight #подсветка текста
    home-manager # конфигурация пользовательского профиля Nixos
#    hplipWithPlugin
    htop # просмотр процессов
    imagemagick # обрабока изображений
    jp # for cli view json
    jgmenu # меню запуска программ
#    joplin # заметки
#    joplin-desktop # заметки
    keepassxc # менеджер паролей 
    killall # завершение процессов
    kitty # терминал с отображением графики
    kotatogram-desktop
    lame # конвертирование медиа кодек
    libnotify # сообщения нотификации
    libreoffice # бесплатный офис
#    libuchardet # библиотека распознавания символов
    lsof # просмотр открытих файлов
#    lua51Packages.lua-iconv
    mediainfo # информация о медиафайлах
    miller # обработка файлов csv, json ...
    monolith # загрузка html и преобразование в один файл
    mpv # видеоплеер
    mupdf # обработка pdf
    mysql # sql сервер
    ncurses # создание tui 
    nerdfonts # шрифты
    odt2txt # преобразование документов libreoffice в текст
    okular # просмотр документов
#    obsidian # база заметок 
    p7zip # архиватор
    picom # композитор для оконых менеджеров
    picard # медиатеги
    pistol # для просмотра файлов
    php # программирование сайтов
    pmount # монтирование дисков
    postgresql # сервер базы данных
    poppler # обработка pdf
    (python3Full.withPackages(ps : with ps ;[
      dbus-python # пакет dbus для python 3
      ipython # ipython
      xapian # база данних, используемая в recoll
      mistune #  парсер markdown
      py3status 
      beets
#      qtile
    ]))
    qemu # емулятор виртуальной машины
    recoll # локальний поиск текста
    rofi # меню для запуска программ
    ruby # язык программирования
    sayonara # библиотека музыки
    scrot # скриншоты (скрипт bash)
    sigil # редактор книг epub
#    smenu # выбор файлов в терминале
    sqlite # работа з базой данных
    sqlitebrowser # просмотр базы данных
    sxiv # просмотр изображений
    system-config-printer
    tdesktop # Telegram-Desktop
    terminus_font # шрифт
    terminus_font_ttf # шрифт
    tree # просмотр дерева каталогов
    trilium-desktop
    unrar #архиватор
#    ueberzug
    fzf-zsh #u
    clifm # терминальный файловый менеджер 
    unzip # архиватор
    usbutils # работа с usb
    util-linux # разные полезные утититы
    vifm-full # текстовый редактор
    vim_configurable # текстовый редактор
    virt-manager # менеджер виртуальних машин
    w3m # тестовый интернет браузер
    wget # хагрузка файлов с сети
    xsane # работа со сканером
    you-get # загрузка видео
    youtube-dl # загрузка видео
    zip # архиватор
    zoom # мессенджер
    zathura # просмотр pdf
  ];
  

}
