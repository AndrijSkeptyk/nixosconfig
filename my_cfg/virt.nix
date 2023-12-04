{ config, pkgs, lib, ... }:

{
  virtualisation.docker = {
    enable = true;
    enableOnBoot = true;
  };
  virtualisation.libvirtd.enable = true;
  # virtualisation.virtualbox.host.enable = true;
  # virtualisation.virtualbox.host.enableExtensionPack = true;
  services.flatpak.enable = true; 
  environment.systemPackages = with pkgs; [
    docker-compose # контейнер docker
    qemu # емулятор виртуальной машины
    virt-manager # менеджер виртуальних машин
  ];
}
