{ config, lib, pkgs, ... }:

{       
  services.xserver.windowManager.bspwm.enable = true;

#    home-manager.users.andrey = { pkgs, ... }: {
#          services.sxhkd.enable = true  ;
#     };
              
}  
