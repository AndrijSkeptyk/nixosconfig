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
        ytpp() {
           youtube-dl -o '%(title)s.%(ext)s' --external-downloader  aria2c $@  $(xclip -o -sel cli)
           }
        lr() {
          cp -r $(readlink -f $1;unlink $1>/dev/null) $1
      }'';




    shells = [ pkgs.bashInteractive ];
    
    homeBinInPath = true;

    shellAliases =  {
      
      c = "clifm";

      h = "history";
      hg = "history|grep";
      p = "ps -ax";
      pg = "ps -ax|grep";


      q = "exit";
      sdwn = "shutdown -h 0";
      lsp = "netstat -tupln";

      nh = "nix-hash --type sha256 --base32 ";
      ns = "nix-shell ";
      nr = "sudo nixos-rebuild switch ";
      ne = "nix-env ";
      ncl = "nix-collect-garbage ";

      i = "ipython ";

      gta = "git add";
      gtc = "git commit ";
      gts = "git status";
      gtgh = "git push";
      ghgt = "git pull";
      gtr = "git rm ";
      gtu = "git restore ";
      
      dcu = "docker-compose up  --build -d";
      dcd = "docker-compose down";
      gcr = "docker-compose restart";
      dps  = "docker ps -a";
      dil = "docker image list";
      dip = "docker image prune";
      dir = "docker rmi";

      ffpp = "ffmpeg -i $(xclip -o -sel cli)";

      gpp = "git clone $(xclip -o -sel cli)";
      ygpp = "you-get $(xclip -o -sel cli)";
    };
  };


#  programs.zsh={
#      enable = true;
#      enableCompletion = true;
#      autosuggestions.enable = true;
#
#     ohMyZsh = {
#        enable = true;
#        theme = "peepcode";
#        plugins = [
#          "autojump"
#        ];
#     };
#  };

  environment.systemPackages = with pkgs; [
      lf
#      oh-my-zsh
      trash-cli
#      zsh-autosuggestions
#      zsh-syntax-highlighting
      ueberzug
    ];
    
}



