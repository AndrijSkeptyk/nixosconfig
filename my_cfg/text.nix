{  config, pkgs,  ... }:
{
  nixpkgs.config.allowBroken = true;
  environment.systemPackages = with pkgs; [
 
    bat # подсветка синтаксиса
    catdoc # конвертирование документов Майкрософт Офис в текст
    glow #Render markdown on the CLI, nnn view no guix
    highlight #подсветка текста
    miller # обработка файлов csv, json ...no guix
    odt2txt # преобразование документов libreoffice в текст
#    haskellPackages.open-pandoc
#    pandoc
#    python311Packages.pypandoc
    pistol # для просмотра файлов no guix
    vim_configurable # текстовый редактор
    htmlq
    jp # for cli view json no guix
    python311Packages.html2text
    python311Packages.mistletoe
  ];
}

