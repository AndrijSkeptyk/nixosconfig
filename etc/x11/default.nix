{ config, lib, pkgs, ... }:

{
  imports =  [  ];



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

#  services.xserver.desktopManager.lxqt.enable = true;

  services.xserver.windowManager.i3.enable = true;
  
  services.xserver.windowManager.bspwm.enable = true;
  






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
  ];




  


  home-manager.users.andrey = { pkgs, ... }: {
   home.file.".background-image".source = ./wallparers/m1.jpg;
  };





  services.picom = {
    enable = true;
    backend = "glx";
    shadow = true;
    vSync = true;
#    blur = true;
    shadowExclude = [
      "_GTK_FRAME_EXTENTS@:c"
      "class_g = '.ulauncher-wrapped'"
      "class_g = 'Conky'"
      "class_g = 'Peek'"
      "class_g = 'Ulauncher'"
      "class_g = 'gromit-mpx'"
      "class_g = 'i3-frame'"
      "name = 'Polybar tray window'"
      "name = 'polybar-blur-noshadow'"
      "name = 'polybar-noblur-noshadow'"
    ];
  };


}


