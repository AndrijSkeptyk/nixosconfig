{ config, pkgs, ... }:


{
programs.chromium.enable = true;
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


  environment.systemPackages = with pkgs; [
  chromium
  ];


}
