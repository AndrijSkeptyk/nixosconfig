{ config, pkgs,  ... }:


 {
  environment.shellAliases =  {
      n = "nnn -a";
    };
  
  environment.systemPackages = [pkgs.nnn];

  home-manager.users.andrey = { pkgs, ... }: {
    programs.nnn.enable = true;
    programs.nnn.package = pkgs.nnn.override ({ withNerdIcons = true; });
    programs.nnn.bookmarks = {
      d = "/home/andrey/Загрузки";
      D = "/home/andrey/Data";
      g = "/home/andrey/git";
      v = "/home/andrey/Видео";
      a = "/home/andrey/Музыка";
      c = "~/.config";
      p = "~/.config/nnn/plugins";
      l = "~/.local";
      m = "/mnt";
      n = "/nix";
      s = "/nix/store";
    };
    
#    programs.nnn.plugins.src =  (pkgs.fetchFromGitHub {
  xdg.configFile."nnn/plugins/" =  {
    recursive = true;
    source = (pkgs.fetchFromGitHub {
      owner = "jarun";
      repo = "nnn";
      rev = "v4.4";
      sha256 = "sha256-g9GaCc/IWKtih0/A2AZEPImjj7ymJIdYwC5I/6GUh5c=";
    }) + "/plugins";
  };
    programs.nnn.plugins.mappings = {
      ";" = "myfzplug";
      "-" = "preview-tui";
      "o" = "organize";
      "c" = "-!$SHELL -c clifm";
      "i" = "-!ipython --profile=shell";
    };
 xdg.configFile."nnn/plugins/myfzplug".text =  ''
      #CUSTOMDIR1="$HOME/.local/share/nautilus/scripts"
      CUSTOMDIR1=""
      CUSTOMDIR2=""
      nnnpluginsdir="$HOME/.config/nnn/plugins"
      # Preview with bat if installed
      if type bat >/dev/null; then
          BAT="bat --terminal-width='$(tput cols)' --decorations=always --color=always --style='header,numbers'"
      else
        BAT="cat"    
      fi
          plugin=$(find "$nnnpluginsdir" "$CUSTOMDIR1" "$CUSTOMDIR2" \
          -maxdepth 3 -perm -111 -type l 2>/dev/null | fzf --ansi --preview \
              "$BAT {}" --preview-window="right:66%:wrap" --delimiter / \
                  --with-nth -1 --bind="?:toggle-preview")
                  # Try running the script on the hovered file, and abort
                  # abort if no plugin was selected (ESC or ^C pressed).
                  err=0
                  if ! [ "$plugin" = "" ]; then
                      "$plugin" "$1" || err=1
                      fi
                      # If attempt with hovered file fails, try without any target
                      # (nnn selections should still be passed to the script in that case)
                      if [ "$err" -eq "1" ]; then
                          clear && "$plugin" || err=2
                          fi
                          # Abort and show error if both fail
                          if [ "$err" -eq "2" ]; then
                              sep="\n---\n"
                                  printf "$sep""Failed to execute '%s'. See error above or try without fzfplug. Press return to continue. " "$plugin" && read -r _ && clear
                                      fi
          '';
 xdg.configFile."nnn/plugins/myfzplug".executable =  true;

  };



}


