{ config, lib, pkgs, ... }:

{
  imports =  [
              ./x11.nix
              ./xfce4.nix 
              ./picom.nix
  ];



  # Enable the X11 windowing system.
  services.xserver.enable = true;
  
#  services.xserver.extraLayouts.ua-rus = {
#  description = "UA layout with alt-gr ru";
#  languages   = [ "ua" ];
#  symbolsFile = ./ua-rus;
# };

# Configure keymap in X11
  services.xserver.layout = "us,ua";
  services.xserver.xkbVariant = "rus";
  services.xserver.xkbOptions = "grp:rctrl_rshift_toggle,nbsp:level3,lv3:ralt_switch, ctrl:nocaps";

  
  
  services.xserver.displayManager.lightdm.enable = true;
  services.xserver.displayManager.autoLogin.enable = true;
  services.xserver.displayManager.autoLogin.user = "andrey";
  services.xserver.displayManager.defaultSession = "xfce+i3";
  services.xserver.windowManager.i3.extraSessionCommands =  "${pkgs.feh}/bin/feh --bg-scale --no-xinerama $HOME/.background-image"; 

  services.xserver.desktopManager.xfce.enable = true;
  services.xserver.desktopManager.xfce.noDesktop = true;
  services.xserver.windowManager.i3.enable = true;
  services.xserver.windowManager.i3.package = pkgs.i3-rounded;


  xdg.portal.extraPortals=[ pkgs.xdg-desktop-portal-gtk ];
  xdg.portal.enable=true;


}


