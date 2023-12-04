# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:


{
  imports =
    [ # Include the results of the hardware scan.
        ./hardware-configuration.nix
        ./filesystem.nix
        ../my_cfg/net/default.nix
        ../my_cfg/net/net.nix
        ../my_cfg/admin.nix
        ../my_cfg/archives.nix
        ../my_cfg/virt.nix
        ../my_cfg/x11/default.nix
        ../my_cfg/shells/default.nix
        ../my_cfg/devel.nix
        ../my_cfg/media.nix
        ../my_cfg/office.nix
        ../my_cfg/text.nix
#        ./home-manager.nix  
    ];



  # List packages installed in system profile. To search, run:
  # $ nix search wget

  nixpkgs.config.allowUnfree = true;
  


# Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.andrey = {
    isNormalUser = true;
    extraGroups = [ "wheel" "audio" "video" "docker" "networkmanager" "vboxusers"]; 
    shell=pkgs.bashInteractive;
     };
   



  # Set your time zone.
   time.timeZone = "Europe/Zaporozhye";

  

  documentation.man = { enable = true; man-db.enable = false;
  mandoc.enable = true; };
  documentation.dev.enable = true;

  i18n.defaultLocale = "ru_RU.UTF-8";

#   console = {
#     font = "Terminus";
#     keyMap = "us";
#   };



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
#  hardware.sane.enable = true;
  # Enable sound.
  sound.enable = true;
  hardware.pulseaudio.enable = true;


  # Enable touchpad support (enabled default in most desktopManager).
  # services.xserver.libinput.enable = true;


  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  programs.mtr.enable = true;
  programs.gnupg.agent = {
    enable = true;
    enableSSHSupport = true;
   };

#   services.openssh.enable = true;
   system.copySystemConfiguration = true;


  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "23.0.5"; # Did you read the comment?
  system.autoUpgrade.enable = false;

}


