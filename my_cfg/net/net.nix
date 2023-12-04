{ config, pkgs,  ... }:
{
  environment.systemPackages = with pkgs; [
    aria2 # загрузчик
    crow-translate # онлайн перевод выделенного текста no guix  
    curl # загрузка  с интернета
    microsoft-edge
    nethogs
    inetutils
    tdesktop # Telegram-Desktop
    zoom # мессенджер no guix
    youtube-dl # загрузка видео
    you-get # загрузка видео
    wget # хагрузка файлов с сети
    w3m # тестовый интернет браузер
    tcpdump
    signal-desktop
  ];
}
