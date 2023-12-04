{ config, pkgs,  ... }:
{ 

  environment.systemPackages = with pkgs; [
   xfce.xfce4-panel 
   xfce.xfce4-timer-plugin
   xfce.xfce4-genmon-plugin
   xfce.xfce4-weather-plugin
   xfce.xfce4-netload-plugin
   xfce.xfce4-fsguard-plugin
   xfce.xfce4-dockbarx-plugin
#   xfce.xfce4-namebar-plugin
   xfce.xfce4-windowck-plugin
   xfce.xfce4-xkb-plugin
   xfce.xfce4-whiskermenu-plugin
   xfce.xfce4-sensors-plugin
   xfce.xfce4-pulseaudio-plugin
#   xfce.xfce4-embed-plugin
   xfce.xfce4-datetime-plugin
   xfce.xfce4-volumed-pulse
   xfce.thunar-volman
   xfce.thunar-archive-plugin
   xfce.thunar-media-tags-plugin
 ];
  

}

