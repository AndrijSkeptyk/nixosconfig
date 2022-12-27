with import <nixpkgs> {};  
let
  mybackup =  ./mybackup;
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
   installPhase = ''
        source $stdenv/setup
         cp -R -f  plugins/ $out
         cp -f  "$mybackup" $out/backup
   '';
  meta = rec {
    decription = "Small ncurses-based file browser forked from noice";
    homepage = "https://github.com/jarun/nnn";
    changelog = "https://github.com/jarun/nnn/blob/v${version}/CHANGELOG";
    };
    }
