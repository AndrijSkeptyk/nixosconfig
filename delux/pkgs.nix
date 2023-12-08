{ config, pkgs,  ... }:

let unstable = import <unstable> {};
in { 
  nixpkgs.config.allowBrocken = true;

  environment.systemPackages = with pkgs; [
    firefox
    tridactyl-native
    pandoc
    python311Packages.pandoc-xnos
    texliveTeTeX
  ];
  

}
