{ config, pkgs,  ... }:

  # List packages installed in system profile. To search, run:
  # $ nix search wget

let unstable = import <unstable> {};
in { 
  nixpkgs.config.allowUnfree = true;
  nixpkgs.config.permittedInsecurePackages = [
      "libgit2-0.27.10"
  ];

  environment.systemPackages = with pkgs; [
    alacritty
    adb-sync
    adbfs-rootless
    android-studio
    android-file-transfer
#    arcan.durden
#    arcan.arcan
    archivemount
    aria2
    aspell
    aspellDicts.en
    aspellDicts.ru
    aspellDicts.uk
    atool 
    autojump
    avfs
    bat
    btrfs-progs
    cabal-install
    calibre
    calibre-web
    catdoc 
    cdrtools
    chromium
    clementine
    cmake
    conky
    copyq
    crow-translate
    curl
    deer
    djvulibre
    dmenu
    docker
    docker-compose
    emacs
    enchant #spell checking
    evince
    ffmpeg-full
    ffmpegthumbnailer
    file
#    firefox
    flameshot
    font-manager
    foomatic-filters
    fslint
    fzf
    fzy
    gcc
    gcc_multi
    ghc
    gimp-with-plugins
    gitFull
    github-desktop
    glow #Render markdown on the CLI
    gmrun
    gnumake
    gnome.gnome-keyring
    gparted
    groff
    gtklp
    gutenprintBin
    gv #x11 ghostscript
    gxkb
    haskell-ci
    highlight
    home-manager
    hplip
    hplipWithPlugin
    htop
    imagemagick
    jp # for cli view json
    julia-bin
    kbdd
    keepassxc
    killall
    kitty
    libnotify
    libreoffice
    libuchardet
    lsof
    lua51Packages.lua-iconv
#    masterpdfeditor4
    mediainfo
    miller
    monolith
    mpv
    mupdf
    mysql
    ncurses
    nodePackages.ungit
    odt2txt
    okular
    p7zip
    picom
    pistol
    php
    pmount
    postgresql
    poppler
    pulseaudio
    python2Full
    python39Packages.dbus-python
    python39Packages.ipython
    python39Packages.pip
    python39Packages.xapian
    python3Full
    qemu
    qutebrowser
    recoll
    rofi
    ruby
    scrot
    sqlite
    sqlitebrowser
    stack
    sxiv
    system-config-printer
    tdesktop
    terminus_font
    terminus_font_ttf
    tree
    trilium-server
    nodePackages.ungit
    unrar
    unstable.fzf-zsh
    unstable.i3pystatus
    unstable.clifm
    unzip
    usbutils
    util-linux
    vifm-full
    vim_configurable
    virt-manager
    w3m
    wget
    xclip
    xdg-utils
    xdotool
    xfce.xfce4-netload-plugin
    xfce.xfce4-weather-plugin
    xorg.libX11
    xorg.libXft
    xorg.libXinerama
    xorg.libXrandr
    xorg.libXScrnSaver
    xorg.xev
    xorg.xmessage
    xorg.xkill
    xsane
    you-get
    youtube-dl
    zip
    zoom
    zathura
  ];
  

}
