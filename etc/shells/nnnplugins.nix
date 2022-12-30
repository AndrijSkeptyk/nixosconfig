with import <nixpkgs> {};  
let
  mybackup=./mybackup;
  nuke=./nuke;
in  
 stdenv.mkDerivation rec {
   pname = "nnnplugins";
   version = "4.7";
   src = fetchFromGitHub {
   owner = "jarun";
   repo = "nnn";
   rev = "v4.7";
   sha256 = "sha256-ttG0aEqMlNyJaMhcVfrxbxlrhr1GSydrV58CYSq4CTM=";
 };
  
   configurePhase = "";
   dontBuild = true;
 
   inherit mybackup;
   inherit nuke;
   installPhase = ''
        source $stdenv/setup
        mkdir -p $out/plugins
        cp -R -f  plugins/ $out/
        cp "$mybackup" $out/plugins/mybackup
        cp -f "$nuke" $out/plugins/nuke
        cat plugins/fzplug|sed -r -e 's/(^plugin...find)/\1 -L/' > $out/plugins/fzplug
        '';
  meta = rec {
    decription = "Small ncurses-based file browser forked from noice";
    homepage = "https://github.com/jarun/nnn";
    changelog = "https://github.com/jarun/nnn/blob/v${version}/CHANGELOG";
    };
    }
