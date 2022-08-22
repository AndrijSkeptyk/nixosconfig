{ config, pkgs,  ... }:


{
  
 imports = [ ./nnn.nix
 ];
 
 
   environment = {
    variables =  {
      EDITOR = "vim";
      VISUAL = "vim";
    };

    shellInit = ''
        source "${pkgs.clifm}/share/clifm/functions/cd_on_quit.sh" 
        source "${pkgs.clifm}/share/clifm/functions/file_picker.sh" 
        source "${pkgs.clifm}/share/clifm/functions/subshell_notice.sh" 
#        tomp3() {
#          ffmpeg -i "$1" -vn -codec:a libmp3lame -q:a 2 "$1".mp3
#          }
        ytpp() {
           youtube-dl -o '%(title)s.%(ext)s' --external-downloader  aria2c $@  $(xclip -o -sel cli)
           }
        lr() {
          cp -r $(readlink -f $1;unlink $1>/dev/null) $1
      }'';




    shells = [ pkgs.bashInteractive pkgs.zsh ];
    
    homeBinInPath = true;

    shellAliases =  {

      q = "exit";
      sdwn = "shutdown -h 0";
      lsp = "netstat -tupln";

      nh = "nix-hash --type sha256 --base32 ";
      ns = "nix-shell ";
      nr = "sudo nixos-rebuild switch ";
      ne = "nix-env ";
      x = "xonsh";

      g = "git ";
      gpp = "git clone $(xclip -o -sel cli)";
      ygpp = "you-get $(xclip -o -sel cli)";
    };
  };


  programs.zsh={
      enable = true;
      enableCompletion = true;
      autosuggestions.enable = true;

     ohMyZsh = {
        enable = true;
        theme = "peepcode";
        plugins = [
          "autojump"
        ];
     };
  };

  environment.systemPackages = with pkgs; [
      lf
      oh-my-zsh
      trash-cli
      zsh-autosuggestions
      zsh-syntax-highlighting
      ueberzug
    ];
    
}



