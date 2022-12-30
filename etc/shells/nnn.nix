{config, pkgs,  ... }:

 {
  environment.variables =  { NNN_SEL="/tmp/.sel";};

  environment.shellAliases =  {
    n = "nnn -aS ";
    };
  
  environment.systemPackages = [pkgs.nnn];

#  NNN_OPENER=/absolute/path/to/nuke

  home-manager.users.andrey = { pkgs, ... }: {
    programs.nnn.enable = true;
    programs.nnn.package = pkgs.nnn.override ({ withNerdIcons = true; });
    programs.nnn.bookmarks = {
      d = "/home/andrey/Загрузки";
      g = "/home/andrey/git";
      v = "/home/andrey/Видео";
      m = "/home/andrey/Музыка";
      c = "~/.config";
      p = "~/.config/nnn/plugins";
      l = "~/.local";
      s = "/nix/store";
    };
    
#    programs.nnn.plugins.src =  (pkgs.fetchFromGitHub {
  xdg.configFile."nnn/plugins/" =  {
    recursive = true;
    source = (pkgs.fetchFromGitHub {
      owner = "jarun";
      repo = "nnn";
      rev = "v4.7";
      sha256 = "sha256-ttG0aEqMlNyJaMhcVfrxbxlrhr1GSydrV58CYSq4CTM=";
#      rev = "v4.4";
#      sha256 = "sha256-g9GaCc/IWKtih0/A2AZEPImjj7ymJIdYwC5I/6GUh5c=";
    }) + "/plugins";
  };
    programs.nnn.plugins.mappings = {
      "b" = "mybackup";
      "-" = "preview-tui";
      "o" = "organize";
      "i" = "-!ipython";
      "c" = "-!conda-shell";
      "r" = "-!raku";
      "m" = "-!mimeopen -d \\\"\\\$\{PWD\}/\\\$\{nnn\}\\\"";
    };
   xdg.configFile."nnn/plugins/myfzplug".source =  ./myfzplug;
   xdg.configFile."nnn/plugins/mybackup".source = ./mybackup;
   xdg.configFile."nnn/plugins/nuke".source = pkgs.lib.mkForce ./nuke;

  };



}


