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
        ./net/default.nix
        ./pkgs.nix
        ./docker.nix
        ./x11/default.nix
        ./shells/default.nix
        ./users.nix
        ./searx.nix
    ];


  home-manager.useUserPackages = true;
  home-manager.useGlobalPkgs = true;
  home-manager.users.andrey = { pkgs, ... }: {
     home.username = "andrey";
     home.homeDirectory = "/home/andrey";
   };


  # Set your time zone.
   time.timeZone = "Europe/Zaporozhye";

  
  virtualisation.libvirtd.enable = true;
  virtualisation.virtualbox.host.enable = true;
  virtualisation.virtualbox.host.enableExtensionPack = true;


  documentation.man = { enable = true; man-db.enable = false;
  mandoc.enable = true; };
  documentation.dev.enable = true;

  # Select internationalisation properties.
  i18n.defaultLocale = "ru_RU.UTF-8";
  # console = {
  #   font = "Lat2-Terminus16";
  #   keyMap = "us";
  # };



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


#  services.miniflux.enable = true;
#  services.miniflux.config.LZISTEN_ADDR = "localhost:9999";
#  services.postgresql.enable  = true;
#  services.tt-rss.enable  = true;
# services.tt-rss.database.user  = "admin";
#  services.tt-rss.database.password  = "password";
#services.selfoss.enable  = true;
#services.nginx.enable  = true;
#services.selfoss.user  = "andrey";

  # Enable touchpad support (enabled default in most desktopManager).
  # services.xserver.libinput.enable = true;


  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  programs.mtr.enable = true;
  programs.gnupg.agent = {
    enable = true;
    enableSSHSupport = true;
   };



  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "21.11"; # Did you read the comment?
  system.autoUpgrade.enable = true;

}

