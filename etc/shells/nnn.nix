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
      ";" = "myfzplug";
      "b" = "mybackup";
      "-" = "preview-tui";
      "o" = "organize";
      "c" = "-!$SHELL -c clifm";
      "i" = "-!ipython";
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
          xdg.configFile."nnn/plugins/mybackup".text =  ''
        #!/usr/bin/env bash
        sudo bash <<END
        mount LABEL=manjaro /mnts || exit 1
        mount LABEL=usbmanjaro /mnt || exit 1
        rsync -av --delete /mnts/Data /mnt/Data/
        rsync -av --delete /mnts/Documents/ /mnt/Documents/
        rsync -av --delete /mnts/git/ /mnt/git/
        rsync -av --delete /mnts/iso/ /mnt/iso/
        rsync -av --delete /mnts/Downloads/ /mnt/Downloads/
        rsync -av --delete /mnts/Music/ /mnt/Music/
        rsync -av --delete /mnts/nixhome/ /mnt/nixhome/
        #rsync -av --delete /mnts/Notesbooks/ /mnt/Notesbook/
        rsync -av --delete /mnts/Pictures/ /mnt/Pictures/
        rsync -av --delete /mnts/Videos/ /mnt/Videos/
        rsync -av --delete /mnts/Calibre/Computers/ /mnt/Calibre/Computers/
        rsync -av --delete /mnts/Calibre/Cooking/ /mnt/Calibre/Cooking/
        rsync -av --delete /mnts/Calibre/Hacker/ /mnt/Calibre/Hacker/
        rsync -av --delete /mnts/Calibre/Literature/ /mnt/Calibre/Literature/
        rsync -av --delete /mnts/Calibre/Medicine/ /mnt/Calibre/Medicine/
        rsync -av --delete /mnts/Calibre/Mix/ /mnt/Calibre/Mix/
        rsync -av --delete /mnts/Calibre/Society/ /mnt/Calibre/Society/
        rsync -av --delete /mnts/Calibre/All/ /mnt/Calibre/All/
        rsync -av --delete /mnts/trilium/ /mnt/trilium/
        umount /mnt
        umount /mnts
        END
  '';
   xdg.configFile."nnn/plugins/myfzplug".executable =  true;
   xdg.configFile."nnn/plugins/mybackup".executable =  true;

  };



}


