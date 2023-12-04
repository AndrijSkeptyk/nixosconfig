{config, pkgs,  ... }:

 {
  environment.systemPackages = with pkgs; [
    archivemount # mounting of cpio, .tar.gz, .tar.bz2
    atool # монтирование архивов 
    avfs # монтирование архивов
    unzip # архиватор
    unrar #архиватор
    zip # архиватор
    p7zip # архиватор
    gnome.file-roller
    ];
  }
