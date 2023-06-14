{ config, pkgs, ... }:


{
programs.chromium.enable = true;
#programs.chromium.homepageLocation = "http://localhost:8888/"; #statrx
programs.chromium.extraOpts = {
  "SyncDisabled" = true;
  "PasswordManagerEnabled" = false;
  "SpellcheckEnabled" = true;
  "SpellcheckLanguage" = [
    "ru"
    "en-US"
    "uk"
  ];
};

home-manager.users.andrey = { pkgs, ... }: {
  programs.chromium.enable = true ;
  programs.chromium.extensions = [
    { id = "oboonakemofpalcgghocfoadofidjkkk"; }  #KeePassXC-Browser
    { id = "ifmhoabcaeehkljcfclfiieohkohdgbb"; }  #Social Fixer for Facebook
    { id = "dfhgmnfclbebfobmblelddiejjcijbjm"; }  #Trilium Web Clipper
    { id = "cjpalhdlnbpafiamejdnhcphjbkeiagm"; }  #uBlock Origin
    { id = "gfbliohnnapiefjpjlpjnehglfpaknnc"; }  #Surfingkeys
];
};
}
