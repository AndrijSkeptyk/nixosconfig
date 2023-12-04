{ config, pkgs,  ... }:
{
  environment.systemPackages = with pkgs; [

    deadbeef # медиаплеер и конвертор музыки no guix
    easytag
    ffmpeg-full # работа с видео
    ffmpegthumbnailer # скины видео
    feh # просмотр изображений
    gimp-with-plugins # графический редактор Gimp
    imagemagick # обрабока изображений
    jbig2enc # no guix
    jbig2dec
    lame # конвертирование медиа кодек
    mpv # видеоплеер
    sxiv # просмотр изображений
    strawberry # медиаплеер
  ];
}


