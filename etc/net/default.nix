{ config, pkgs,  ... }:


{
  
  imports = [
    ./firefox.nix 
    ./chromium.nix 
 ];

  networking.hostName = "nixos"; # Define your hostname.
  networking.useDHCP = false;
  networking.interfaces.br-6fdbab5ada7c.useDHCP = true;
  networking.interfaces.docker0.useDHCP = true;
  networking.interfaces.enp2s0.useDHCP = true;
  networking.interfaces.veth6e14cb9.useDHCP = true;
  networking.interfaces.veth8db1382.useDHCP = true;
  networking.networkmanager.enable = true;

  # Open ports in the firewall.
  # networking.firewall.allowedTCPPorts = [ ... ];
  # networking.firewall.allowedUDPPorts = [ ... ];
  # Or disable the firewall altogether.
  networking.firewall.enable = false;


  services.tor.enable = true;

  services.trilium-server={
      enable = true;
      port = 8899;
#      dataDir ="/home/andrey/Notesbooks/mytrilium/"; 
    };


  services.calibre-web.enable = true;
  services.calibre-web.user = "andrey";
  services.calibre-web.options.enableBookConversion = true;
#  services.calibre-web.options.calibreLibrary = /home/andrey/Calibre/All/metadata.db;

}



