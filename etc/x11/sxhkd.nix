{ config, lib, pkgs, ... }:

{
  home-manager.users.andrey = { pkgs, ... }: {
    services.sxhkd.enable = true  ;

    services.sxhkd.keybindings = {
        # terminal emulator
        "super + Return" = "kitty";

         # Rofi 
         "ctrl + Menu" = "rofi -theme Pop-Dark -modi drun,run,window,filebrowser -show drun -show-icons -sidebar-mode";
         # sxhkd reload configuration files
         "super + Escape" = "pkill -USR1 -x sxhkd";

         #
         # bspwm hotkeys
         #

         # quit/restart bspwm
         "super + ctrl + {q,r}" = "bspc {quit,wm -r}";

         # close and kill window
         "super + {_,shift + }q" = "bspc node -{c,k}";

         #  tiled / monocle layout
         "super + m" = "bspc desktop -l next";

         # swap the current node and the biggest local window
         "super + g" = "bspc node -s --follow biggest.local.window";

         # set the window state (fullscreen floating tiled pseudo_tiled
         "super + {f,t,s}" =  "bspc node focused -t {floating,tiled,fullscreen"; 
              

         # set the node flags
         "super + alt + {m,l,s,p}" = "bspc node -g {marked,locked,sticky,private}";

         #
         # focus/swap
         #

         # focus the node in the given direction
         "super + {_,shift+}{Left,Down,Up,Right}" =  "bspc node -{f,s} {west,south,north,east}";

         # focus the node for the given path jump
         "super + {p,b,comma,period}" = "bspc node -f @{parent,brother,first,second}";

         # focus the next/previous window in the current desktop
         "super + {_,shift + }c" ="bspc node -f {next,prev}.local.!hidden.window";

         # focus the next/previous desktop in the current monitor (bracket -[] )
         "super + bracket{left,right}" = "bspc desktop -f {prev,next}.local";

         # focus the last node/desktop (grave - `)
         "super + {grave,Tab}" = "bspc {node,desktop} -f last";

         # focus or send to the given desktop
         "super + {_,shift + }{1-9,0}" = "bspc {desktop -f,node -d} '^{1-9,10}'";

         #
         # preselect
         #

         # preselect the direction
         "super + ctrl + {Left,Down,Up,Right}" = "bspc node -p {west,south,north,east}";

         # preselect the ratio
         "super + ctrl + {1-9}" = "bspc node -o 0.{1-9}";

         # cancel the preselection for the focused node
         "super + ctrl + space" = "bspc node -p cancel";

         # cancel the preselection for the focused desktop
         "super + ctrl + shift + space" = "bspc query -N -d | xargs -I id -n 1 bspc node id -p cancel";

         #
         # move/resize
         #

         # expand a window by moving one of its side outward
         "super + alt + {Left,Down,Up,Right}" = "bspc node -z {left -20 0,bottom 0 20,top 0 -20,right 20 0}";

         # contract a window by moving one of its side inward
         "super + alt + shift + {Left,Down,Up,Right}" = "bspc node -z {right -20 0,top 0 20,bottom 0 -20,left 20 0}";

         # move a floating window
         "super + r;{Left,Down,Up,Right}" = "bspc node -v {-20 0,0 20,0 -20,20 0}";



    } ;

  };
  
}  

