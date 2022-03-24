{ config, pkgs, ... }:

{
  imports =
    [ 
    ];

  environment.systemPackages = [pkgs.kitty];

  home-manager.users.andrey = { pkgs, ... }: {
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

    
  };
}


