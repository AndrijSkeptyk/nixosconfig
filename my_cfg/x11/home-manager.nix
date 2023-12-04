{ config, lib, pkgs, ... }:

{

    home.file.".background-image".source = ./wallpapers/sity.jpg;
    home.file.".config/i3/config".source = ./i3.conf;
    home.file.".config/polybar/config".source = ./polybar.config;
    home.file.".config/i3/i3status.conf".source = ./i3status.conf;


}



