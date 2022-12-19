{ config, pkgs,  ... }:


{
  
 imports = [ ./nnn.nix
 ];
 
 
   environment = {
    variables =  {
      EDITOR = "vim";
      VISUAL = "vim";
    };

    extraInit = ''
        lr() {
          cp -r $(readlink -f $1;unlink $1>/dev/null) $1
      }'';




    shells = [ pkgs.bashInteractive ];
    
    homeBinInPath = true;
    localBinInPath = true;

    shellAliases =  {
      
#      c = "clifm ";

      h = "history ";
      p = "ps -ax ";
      q = "exit";
      sdwn = "shutdown -h 0";
      lsp = "netstat -tupln";
      i = "ipython ";
      r = "raku"; 
      ffpp = "ffmpeg -i $(xclip -o -sel cli) ";
      ygpp = "you-get $(xclip -o -sel cli) ";
      ytpp = "youtube-dl -o '%(title)s.%(ext)s' --external-downloader  aria2c  $(xclip -o -sel cli)";
      ocr = "ocrmypdf --output-type=pdfa-2  --pdfa-image-compression=jpeg -O 2  -d -c -l rus+eng --unpaper-args '--layout double' ";
      p6doc = "docker run --rm -d -p 3000:3000 jjmerelo/perl6-doc ";
      
/*      jpl = ''
        conda-shell <<END
        activate anaconda
        jupyter-lab
        END 
      '';
*/
      
      
      nh = "nix-hash --type sha256 --base32 ";
      ns = "nix-shell ";
      nr = "sudo nixos-rebuild switch";
      nru = "sudo nixos-rebuild switch --upgrade-all";
      ne = "nix-env ";
      nel = "nix-env --list-generations";
      ned = "nix-env --delete-generations ";
      ne3d = "nix-env --delete-generations +3 ";
      nei = "nix-env -iA";
      neq = "nix-env -q ";
      nee = "nix-env -e ";
      ncg = "nix-collect-garbage ";

      gta = "git add ";
      gtc = "git commit ";
      gts = "git status ";
      gtgh = "git push ";
      ghgt = "git pull ";
      gtr = "git rm ";
      gtu = "git restore ";
      gpp = "git clone $(xclip -o -sel cli) ";
      
      dcu = "docker-compose up  --build -d ";
      dcd = "docker-compose down ";
      gcr = "docker-compose restart ";
      
      dps  = "docker ps -a ";
      dil = "docker image list ";
      dip = "docker image prune ";
      dir = "docker rmi ";

      ag = "alias|grep ";
      pg = "ps -ax|grep ";
      hg = "history|grep ";
    };
  };



  environment.systemPackages = with pkgs; [
#      oh-my-zsh
      trash-cli
#      zsh-autosuggestions
#      zsh-syntax-highlighting
      ueberzug
    ];
    
}



