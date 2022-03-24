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
#          }'';

    shells = [ pkgs.bashInteractive pkgs.zsh ];
    
    homeBinInPath = true;

    shellAliases =  {

      q = "exit";
      sdwn = "shutdown -h 0";
      lsp = "netstat -tupln";

      ns = "nix search ";
      nsh = "nix-shell ";
      nr = "sudo nixos-rebuild switch ";
      ne = "nix-env ";

      gg = "git ";
      gd= "git clone $(xclip -o -sel cli)";
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



