{ config, lib, pkgs, ... }:

{
  imports =  [ 
              ./sxhkd.nix
#              ./picom.nix
              ./bspwm.nix
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
  services.xserver.displayManager.defaultSession = "xfce+bspwm"; 

  services.xserver.desktopManager.xfce.enable = true;
  services.xserver.desktopManager.enlightenment.enable = true;

#  services.xserver.desktopManager.lxqt.enable = true;

  services.xserver.windowManager.berry.enable = true;
#  services.xserver.windowManager.herbstluftwm.enable = true;
  
  






  environment.systemPackages = [
   pkgs.xfce.xfce4-timer-plugin
   pkgs.xfce.xfce4-genmon-plugin
   pkgs.xfce.xfce4-i3-workspaces-plugin
   pkgs.xfce.xfce4-mailwatch-plugin
   pkgs.xfce.xfce4-namebar-plugin
   pkgs.xfce.xfce4-netload-plugin
   pkgs.xfce.xfce4-screenshooter
   pkgs.xfce.xfce4-verve-plugin
   pkgs.xfce.xfce4-weather-plugin
   pkgs.xfce.xfce4-xkb-plugin 
   pkgs.polybar
   pkgs.flameshot 
   pkgs.copyq 
   pkgs.crow-translate
   pkgs.sxhkd
   pkgs.lxqt.lxqt-policykit
   pkgs.enlightenment.enlightenment
   pkgs.enlightenment.econnman
   pkgs.enlightenment.ephoto
   pkgs.enlightenment.evisum
   pkgs.enlightenment.rage
   pkgs.enlightenment.terminology
   pkgs.enlightenment.efl
  ];



  


  home-manager.users.andrey = { pkgs, ... }: {
   home.file.".background-image".source = ./wallparers/m1.jpg;
  };



}


