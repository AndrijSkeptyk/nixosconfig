{ config, lib, pkgs, ... }:

{
  imports =  [ 
#             ./sxhkd.nix
              ./picom.nix
#              ./bspwm.nix
  ];



  # Enable the X11 windowing system.
  services.xserver.enable = true;
  
  services.xserver.extraLayouts.ua-rus = {
  description = "UA layout with alt-gr ru";
  languages   = [ "ua" ];
  symbolsFile = ./ua-rus;
 };

# Configure keymap in X11
  services.xserver.layout = "us,ua";
  services.xserver.xkbVariant = "rus";
  services.xserver.xkbOptions = "grp:rctrl_rshift_toggle,nbsp:level3,lv3:ralt_switch";

#  services.xserver.desktopManager.wallpaper.mode="fill";
#  services.xserver.desktopManager.wallpaper.combineScreens = true;

#  programs.sway.enable = true;
#  xdg.portal.wlr.enable = true;
#  services.pipewire.enable = true;
#  services.pipewire.alsa.enable = true;


  
  
  
  
  services.xserver.displayManager.lightdm.enable = true;
  services.xserver.displayManager.autoLogin.enable = true;
  services.xserver.displayManager.autoLogin.user = "andrey";
  services.xserver.displayManager.defaultSession = "lxqt+notion"; 
  services.xserver.windowManager.i3.extraSessionCommands =  "${pkgs.feh}/bin/feh --bg-scale --no-xinerama $HOME/.background-image"; 

services.xserver.desktopManager.xfce.enable = true;
#services.xserver.desktopManager.gnome.enable = true;
#services.gnome.tracker.enable=false;
#services.gnome.tracker-miners.enable=false;
services.xserver.desktopManager.lxqt.enable = true;
  environment.lxqt.excludePackages = [
    pkgs.lxqt.qterminal
    pkgs.lxqt.lximage-qt
    pkgs.lxqt.qtermwidget
    pkgs.lxqt.compton-conf
  ];

  services.xserver.windowManager.notion.enable = true;
  services.xserver.windowManager.i3.enable = true;
  services.xserver.windowManager.i3.package = pkgs.i3-rounded;
  
  






  environment.systemPackages = with pkgs;  [
   flameshot 
#   lxqt.lxqt-themes
#   lightly-qt
#   qgnomeplatform
#   zuki-themes
#   theme-obsidian2
#   qtstyleplugin-kvantum-qt4
   copyq 
   crow-translate
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



  


  home-manager.users.andrey = { pkgs, ... }: {
    home.file.".background-image".source = ./wallpapers/sity.jpg;
    home.file.".config/i3/config".source = ./i3.conf;
    home.file.".config/i3/i3status.conf".source = ./i3status.conf;
  };



}


