{ config, pkgs, ... }:

{

    programs.kitty.enable = true;
    programs.kitty.font.name =  "Terminus";
    programs.kitty.font.size  = 14; 
    programs.kitty.settings = {
      foreground = "#c5c8c6";
      background = "#1d1f21";
      allow_remote_control = "yes";
      listen_on  = "unix:/tmp/kitty"; 
      enabled_layouts = "splits:split_axis=horizontal";
      allow_hyperlinks = "yes";
      term = "kitty";

    };

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
      o = "~/Look";
      s = "/nix/store";
      t = "~/tiddlywiki";
    };
    
  xdg.configFile."nnn/plugins/" =  {
    recursive = true;
    source = (pkgs.fetchFromGitHub {
      owner = "jarun";
      repo = "nnn";
      rev = "v4.7";
      sha256 = "sha256-ttG0aEqMlNyJaMhcVfrxbxlrhr1GSydrV58CYSq4CTM=";
    }) + "/plugins";
  };
    programs.nnn.plugins.mappings = {
      "d" = "dups";
      "f" = "finder";
      "b" = "mybackup";
      "-" = "preview-tui";
      "o" = "myocr";
      "i" = "-!ipython";
      "c" = "-!conda-shell";
      "r" = "-!raku";
      "p" = "myfzplug";
      "m" = "mimelist";
      ";" = "xdg_set_default_open";
    };
   xdg.configFile."nnn/plugins/myfzplug".source =  ./myfzplug;
   xdg.configFile."nnn/plugins/mybackup".source = ./mybackup;
   xdg.configFile."nnn/plugins/xdg_set_default_open".source =  ./xdg_set_default_open;
   xdg.configFile."nnn/plugins/myocr".source =  ./myocr;
    
}


