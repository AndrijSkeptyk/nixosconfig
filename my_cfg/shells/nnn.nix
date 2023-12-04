{config, pkgs,  ... }:

 {
  environment.variables =  { NNN_SEL="/tmp/.sel";};

  environment.shellAliases =  {
    n = "nnn -aS ";
    };
  
#  environment.systemPackages = [pkgs.nnn];
  environment.systemPackages = with pkgs; [
    nnn
    mktemp # nnn viewer depend no guix
    trash-cli
    ueberzug
    sshfs # for nnn fuse mount over ssh
    physlock # optional nnn, alternative vlock
    (import ./nnnplugins.nix)
    ];

#  NNN_OPENER=/absolute/path/to/nuke



}


