{ config, pkgs,  ... }:
{
  environment.systemPackages = with pkgs; [
    cmake  # для разрабочиков ПО
    conda # conda-shell, conda-install
    gcc_multi # для разрабочиков ПО
    gitFull # git
    go
    gnumake # для разрабочиков ПО
    mysql # sql сервер??
    nodejs
    php # программирование сайтовa
    postgresql # сервер базы данных
    python39Full
    python39Packages.beautifulsoup4
    python39Packages.ipython
    rakudo
    zef # библиотеки rake
    sqlite # работа з базой данных
    sqlitebrowser # просмотр базы данных
  ];
}



