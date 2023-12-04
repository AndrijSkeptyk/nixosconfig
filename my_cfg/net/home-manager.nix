{ config, pkgs, ... }:


{

#    programs.chromium.enable = true ;
    programs.chromium.extensions = [
      { id = "oboonakemofpalcgghocfoadofidjkkk"; }  #KeePassXC-Browser
      { id = "ifmhoabcaeehkljcfclfiieohkohdgbb"; }  #Social Fixer for Facebook
      { id = "dfhgmnfclbebfobmblelddiejjcijbjm"; }  #Trilium Web Clipper
      { id = "cjpalhdlnbpafiamejdnhcphjbkeiagm"; }  #uBlock Origin
      { id = "gfbliohnnapiefjpjlpjnehglfpaknnc"; }  #Surfingkeys
    ];
  
    home.file.".config/qutebrowser/config.py".source = ./qutebrowser/config.py;

}

