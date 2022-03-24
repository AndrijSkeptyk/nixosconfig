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
  services.xserver.displayManager.defaultSession = "none+bspwm"; 

#  services.xserver.desktopManager.xfce.enable = true;

  services.xserver.windowManager.i3.enable = true;
  
  services.xserver.windowManager.bspwm.enable = true;
  
  services.xserver.windowManager.berry.enable = true;

#  services.xserver.windowManager.xmonad.enable = true;

#  services.xserver.windowManager.stumpwm.enable = true;
services.xserver.windowManager.session = [{
  name = "stumpwm";
  start = ''
    /run/current-system/sw/bin/lxqt-policykit-agent &
    ${pkgs.crow-translate}/bin/crow &
    ${pkgs.copyq}/bin/copyq &
    ${pkgs.flameshot}/bin/flameshot &
    ${pkgs.stumpwm}/bin/stumpwm &
    waitPID=$!
    ${pkgs.polybar}/bin/polybar stumpwm &
    '';
  }];
  environment.systemPackages = [ pkgs.stumpwm 
   pkgs.polybar
   pkgs.flameshot 
   pkgs.copyq 
   pkgs.crow-translate
   pkgs.sxhkd
   pkgs.lxqt.lxqt-policykit
  ];

  services.xserver.windowManager.qtile.enable = true;


  


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


