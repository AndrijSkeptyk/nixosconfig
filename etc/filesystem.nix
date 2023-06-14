# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, lib, pkgs, ... }:

{
  imports = [  ];


  # Use the GRUB 2 boot loader.
  boot.loader.grub.enable = true;
  boot.supportedFilesystems = [ "btrfs" ];
  #boot.loader.grub.useOSProber=true;
  boot.loader.grub.efiSupport = false;
  # boot.loader.grub.efiInstallAsRemovable = true;
  # boot.loader.efi.efiSysMountPoint = "/boot/efi";
  # Define on which hard drive you want to install Grub.
  boot.loader.grub.device = "/dev/sda"; # or "nodev" for efi only
  boot.loader.grub.extraEntries=''
    menuentry "Nixos usb" {
      configfile (hd1,msdos1)/nixos/boot/grub/grub.cfg
      };
  '';



  fileSystems."/" =
    { device = "/dev/disk/by-uuid/bb4cca63-bde0-4af7-855e-af49a68efef8";
      fsType = "btrfs";
      options = [ "subvol=nixos" ];
    };

  fileSystems."/var/lib/trilium" =
    { device = "/dev/disk/by-uuid/bb4cca63-bde0-4af7-855e-af49a68efef8";
      fsType = "btrfs";
      options = [ "subvol=trilium,compress=zstd" ];
    };

  fileSystems."/home" =
    { device = "/dev/disk/by-uuid/bb4cca63-bde0-4af7-855e-af49a68efef8";
      fsType = "btrfs";
      options = [ "subvol=nixhome,compress=zstd" ];
    };

  fileSystems."/home/andrey/Загрузки" =
    { device = "/dev/disk/by-uuid/bb4cca63-bde0-4af7-855e-af49a68efef8";
      fsType = "btrfs";
      options = [ "subvol=Downloads,compress=zstd" ];
    };

  fileSystems."/home/andrey/Calibre" =
    { device = "/dev/disk/by-uuid/bb4cca63-bde0-4af7-855e-af49a68efef8";
      fsType = "btrfs";
      options = [ "subvol=Calibre,compress=zstd" ];
    };

  fileSystems."/home/andrey/Data" =
    { device = "/dev/disk/by-uuid/bb4cca63-bde0-4af7-855e-af49a68efef8";
      fsType = "btrfs";
      options = [ "subvol=Data,compress=zstd" ];
    };

  fileSystems."/home/andrey/Документы" =
    { device = "/dev/disk/by-uuid/bb4cca63-bde0-4af7-855e-af49a68efef8";
      fsType = "btrfs";
      options = [ "subvol=Documents,compress=zstd" ];
    };

  fileSystems."/home/andrey/git" =
    { device = "/dev/disk/by-uuid/bb4cca63-bde0-4af7-855e-af49a68efef8";
      fsType = "btrfs";
      options = [ "subvol=git,compress=zstd" ];
    };
  fileSystems."/home/andrey/tiddlywiki" =
    { device = "/dev/disk/by-uuid/bb4cca63-bde0-4af7-855e-af49a68efef8";
      fsType = "btrfs";
      options = [ "subvol=tiddlywiki,compress=zstd" ];
    };

  fileSystems."/home/andrey/iso" =
    { device = "/dev/disk/by-uuid/bb4cca63-bde0-4af7-855e-af49a68efef8";
      fsType = "btrfs";
      options = [ "subvol=iso" ];
    };

  fileSystems."/home/andrey/Музыка" =
    { device = "/dev/disk/by-uuid/bb4cca63-bde0-4af7-855e-af49a68efef8";
      fsType = "btrfs";
      options = [ "subvol=Music" ];
    };

#  fileSystems."/home/andrey/Notesbooks" =
#    { device = "/dev/disk/by-uuid/bb4cca63-bde0-4af7-855e-af49a68efef8";
#      fsType = "btrfs";
#      options = [ "subvol=Notesbooks,compress=zstd" ];
#    };

  fileSystems."/home/andrey/Изображения" =
    { device = "/dev/disk/by-uuid/bb4cca63-bde0-4af7-855e-af49a68efef8";
      fsType = "btrfs";
      options = [ "subvol=Pictures" ];
    };

  fileSystems."/home/andrey/Видео" =
    { device = "/dev/disk/by-uuid/bb4cca63-bde0-4af7-855e-af49a68efef8";
      fsType = "btrfs";
      options = [ "subvol=Videos" ];
    };

  swapDevices =
    [{ device = "/dev/disk/by-uuid/b1ebe430-0521-4e8c-bff5-8465da7c5b82"; }
      { device = "/dev/disk/by-uuid/829e4469-28ed-4deb-8cbc-348ecaed4aee"; }
    ];

    zramSwap.enable=false;
    
}

