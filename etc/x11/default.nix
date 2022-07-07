{ config, lib, pkgs, ... }:

{
  imports =  [ 
#              ./sxhkd.nix
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

  services.xserver.desktopManager.wallpaper.mode="fill";

  
  
  
  
  
  services.xserver.displayManager.lightdm.enable = true;
  services.xserver.displayManager.autoLogin.enable = true;
  services.xserver.displayManager.autoLogin.user = "andrey";
  services.xserver.displayManager.defaultSession = "lxqt+qtile"; 

#  services.xserver.desktopManager.xfce.enable = true;
#  services.xserver.desktopManager.pantheon.enable = true;

  services.xserver.desktopManager.lxqt.enable = true;
  environment.lxqt.excludePackages = [
    pkgs.lxqt.qterminal
    pkgs.lxqt.lximage-qt
    pkgs.lxqt.qtermwidget
    pkgs.lxqt.compton-conf
  ];

#  services.xserver.windowManager.berry.enable = true;
  services.xserver.windowManager.qtile.enable = true;
  
  






  environment.systemPackages = [
#   pkgs.xfce.xfce4-timer-plugin
#   pkgs.xfce.xfce4-genmon-plugin
#   pkgs.xfce.xfce4-i3-workspaces-plugin
#   pkgs.xfce.xfce4-mailwatch-plugin
#   pkgs.xfce.xfce4-namebar-plugin
#   pkgs.xfce.xfce4-netload-plugin
#   pkgs.xfce.xfce4-screenshooter
#   pkgs.xfce.xfce4-verve-plugin
#   pkgs.xfce.xfce4-weather-plugin
#   pkgs.xfce.xfce4-xkb-plugin 
#   pkgs.polybar
   pkgs.flameshot 
   pkgs.lxqt.lxqt-themes
   pkgs.lightly-qt
   pkgs.qgnomeplatform
   pkgs.zuki-themes
   pkgs.theme-obsidian2
   pkgs.qtstyleplugin-kvantum-qt4
   pkgs.copyq 
   pkgs.crow-translate
#   pkgs.sxhkd
   pkgs.xkblayout-state
  ];



  


  home-manager.users.andrey = { pkgs, ... }: {
    home.file.".background-image".source = ./wallpapers/sity.jpg;
    xdg.configFile."qtile/config.py".source = ./config.py;

  };



}


