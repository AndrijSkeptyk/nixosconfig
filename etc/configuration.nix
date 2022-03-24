# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:


{
  imports =
    [ # Include the results of the hardware scan.
        <home-manager/nixos>  
        ./hardware-configuration.nix
        ../myfilesystem.nix
        ./terminal/default.nix
        ./pkgs.nix
        ./x11/default.nix
        ./shells/default.nix
        ./users.nix
    ];


  home-manager.useUserPackages = true;
  home-manager.useGlobalPkgs = true;
  home-manager.users.andrey = { pkgs, ... }: {
     home.username = "andrey";
     home.homeDirectory = "/home/andrey";
   };

  networking.hostName = "nixos"; # Define your hostname.
  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.

  # Set your time zone.
   time.timeZone = "Europe/Zaporozhye";

  # The global useDHCP flag is deprecated, therefore explicitly set to false here.
  # Per-interface useDHCP will be mandatory in the future, so this generated config
  # replicates the default behaviour.
  networking.useDHCP = false;
  networking.interfaces.br-6fdbab5ada7c.useDHCP = true;
  networking.interfaces.docker0.useDHCP = true;
  networking.interfaces.enp2s0.useDHCP = true;
  networking.interfaces.veth6e14cb9.useDHCP = true;
  networking.interfaces.veth8db1382.useDHCP = true;
  networking.networkmanager.enable = true;
  
  virtualisation.libvirtd.enable = true;


  # Configure network proxy if necessary
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";


  # Select internationalisation properties.
  i18n.defaultLocale = "ru_RU.UTF-8";
  # console = {
  #   font = "Lat2-Terminus16";
  #   keyMap = "us";
  # };


  #TOR
  services.tor.enable = true;

  # Enable CUPS to print documents.
#  services.printing = {
#    enable = true;
#    browsing = true;
#    startWhenNeeded = true;
#    drivers = with pkgs; [gutenprint hplip
#              hplipWithPlugin foomatic-filters ];
#
#           };
#
#    services.system-config-printer.enable=true;
    hardware.sane.enable = true;
  # Enable sound.
  sound.enable = true; hardware.pulseaudio.enable = true;

  services.trilium-server={
      enable = true;
      port = 8899;
#      dataDir ="/home/andrey/Notesbooks/mytrilium/"; 
    };



  # Enable touchpad support (enabled default in most desktopManager).
  # services.xserver.libinput.enable = true;


  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  programs.mtr.enable = true;
  programs.gnupg.agent = {
    enable = true;
    enableSSHSupport = true;
   };

  # List services that you want to enable:

  # Enable the OpenSSH daemon.
  # services.openssh.enable = true;

  # Open ports in the firewall.
  # networking.firewall.allowedTCPPorts = [ ... ];
  # networking.firewall.allowedUDPPorts = [ ... ];
  # Or disable the firewall altogether.
  networking.firewall.enable = false;

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "21.11"; # Did you read the comment?
  system.autoUpgrade.enable = true;

}

