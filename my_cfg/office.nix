{ config, pkgs,  ... }:
{
  nixpkgs.config.permittedInsecurePackages = [
                "electron-24.8.6"
              ];

  environment.systemPackages = with pkgs; [

    aspell # правописание
    aspellDicts.en # правописание
    aspellDicts.ru # правописание
    aspellDicts.uk # правописание
    calibre # библиотека книг old wer guix
    djvu2pdf # конвертор djvu в pdf
    djvulibre # работа з djvu
    ghostwriter #
    marktext 
    hunspellDicts.en-us
    hunspellDicts.ru-ru 
    hunspellDicts.uk-ua
    mupdf # обработка pdf
    okular # просмотр документов
    poppler # обработка pdf
    python39Packages.ocrmypdf #no guix
    sigil # редактор книг epub no guix
    trilium-desktop
    zathura # просмотр pdf
    libreoffice # бесплатный офисa
    zettlr
    obsidian
    tetex
    emacs29
];
}

