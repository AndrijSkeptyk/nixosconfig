{ config, pkgs, ... }:

{
  imports = [ ];


# Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.andrey = {
    isNormalUser = true;
    extraGroups = [ "wheel" "audio" "video" "docker" "networkmanager" "vboxusers"]; 
    shell=pkgs.bashInteractive;
     };
   }
