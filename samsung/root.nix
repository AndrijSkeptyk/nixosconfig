{ config, pkgs, ... }:


{
  imports = [
    ../my_cfg/net/home-manager.nix
    ../my_cfg/x11/home-manager.nix
    ../my_cfg/shells/home-manager.nix
  ];

     home.username = "root";

     home.homeDirectory = "/home/root";
     home.stateVersion = "23.05";
   


}




