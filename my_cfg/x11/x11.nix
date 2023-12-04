{ config, pkgs,  ... }:
{ 

  environment.systemPackages = with pkgs; [
    flameshot # получение скриншотов no guix
    font-manager # менеджер шрифтов no guix
    fontpreview # nnn depend optinal viewer  no guix
    copyq # продвинутый менеджер буфера обмена
    picom # композитор для оконых менеджеров
    python310Packages.py3status
    system-config-printer
    terminus_font # шрифт
    terminus_font_ttf # шрифт
    xsane # работа со сканером
    dconf
    gnome.dconf-editor
    gnome.zenity # gui диалоги
    gtdialog # gui диалоги
    ncurses # создание tui 
    nerdfonts # шрифты
   kbdd # демо клавиатури, который сохраняет в каждом окне свою раскладку
   xkblayout-state
   xclip # работа з буфером обмена
   xdg-utils # работа с mime файлами
   xdotool # робота с окнами X11
   xorg.libX11 # для X11
   xorg.libXft # для X11
   xorg.libXinerama # для X11
   xorg.libXrandr # для X11
   xorg.libXScrnSaver # для X11
   xorg.xev # спросмотр собітий окна
   xorg.xmessage # для X11
   xorg.xkill # закритие окна и удаление его процесса
   wmctrl
  ];
  

}

