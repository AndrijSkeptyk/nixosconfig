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
#    alacritty
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
    czkawka
    deer
    djvulibre
    dmenu
    docker
    docker-compose
    emacs
#    enchant #spell checking
    epick
    evince
    ffmpeg-full
    ffmpegthumbnailer
    file
    flameshot
    font-manager
    foomatic-filters
    fzf
    feh
    fzy
    gcc
    gcc_multi
    ghc
    gimp-with-plugins
    gitFull
#    github-desktop
    glow #Render markdown on the CLI
    gmrun
    gnumake
    gnome.gnome-keyring
    gparted
    groff
    gtklp
    gutenprintBin
    gv #x11 ghostscript
#    gxkb
#    haskell-ci
    highlight
    home-manager
#    hplip
#    hplipWithPlugin
    htop
    imagemagick
    jp # for cli view json
    jgmenu
#    julia-bin
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
    nerdfonts
    nodePackages.ungit
    odt2txt
    okular
    obsidian
    p7zip
    picom
    pistol
    php
    pmount
    postgresql
    poppler
    pulseaudioFull
    pavucontrol
    python2Full
    python3Full
    python39Packages.dbus-python
    python39Packages.ipython
#    python39Packages.pip
    python39Packages.xapian
    python39Packages.mistune
    qemu
#    qps
    recoll
    rofi
    ruby
    scrot
    sigil
    smenu
    sqlite
    sqlitebrowser
    starship
    stack
    sxiv
    system-config-printer
    tdesktop
    terminus_font
    terminus_font_ttf
    tree
#    trilium-server
    nodePackages.ungit
    unrar
    ueberzug
    fzf-zsh #u
    i3pystatus #u
    clifm #u
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
    xonsh
    xsane
    you-get
    youtube-dl
    zip
    zoom
    zathura
  ];
  

}
