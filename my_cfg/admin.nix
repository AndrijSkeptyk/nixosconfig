{ config, pkgs,  ... }:
{
  environment.systemPackages = with pkgs; [
    appimage-run
    autojump # быстрый переход в командной оболочке
    bleachbit # чистка от мусора no guix
    btrfs-progs # работа с файловой системой btrfs
    conky #  отображение информационных панелей
    coreutils 
    dmenu # мени для х11
    fzf #cmd fuzzy finder
    glib
    gparted # редактирование разделов диска
    home-manager # конфигурация пользовательского профиля Nixos
    htop # просмотр процессов
    jgmenu # меню запуска программ
    keepassxc # менеджер паролей 
    killall # завершение процессов
    libnotify # сообщения нотификации
    lsof # просмотр открытих файлов
    lm_sensors #???
    lshw
    navi #шпаргалка !!!
    perl536Packages.FileMimeInfo #mimeopen mimeinfo
    pmount # монтирование дисков
    sftpman # sshfs/sftp mount no guix
    tree # просмотр дерева каталогов
    usbutils # работа с usb
    util-linux # разные полезные утититы
    czkawka #поиск дубликатов,  похожих  и ненужных файлов no guix
    file # информация о типе файла
    mediainfo # информация о медиафайлах
    rofi # меню для запуска программ
  ];
}

