{ config, lib, pkgs, ... }:

{       


  services.xserver.windowManager.bspwm.enable = true;
  environment.systemPackages = [pkgs.bsp-layout];

#    home-manager.users.andrey = { pkgs, ... }: {
#          services.sxhkd.enable = true  ;
#     };
              
}  
