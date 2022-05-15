{pkgs,  ... }:



  # Nix firefox addons only work with the firefox-esr package.
    let myFirefox = pkgs.wrapFirefox  pkgs.firefox-esr-unwrapped {
    nixExtensions = [
      (pkgs.fetchFirefoxAddon {
        name = "ublock"; 
        url = "https://addons.mozilla.org/firefox/downloads/file/3679754/ublock_origin-1.31.0-an+fx.xpi";
        sha256 = "1h768ljlh3pi23l27qp961v1hd0nbj2vasgy11bmcrlqp40zgvnr";
      })

      (pkgs.fetchFirefoxAddon {
        name = "google_page_translate"; 
        url = "https://addons.mozilla.org/firefox/downloads/file/3884216/translator-1.0.3-fx.xpi";
        sha256 = "11g19l52xvba3jp86pm9mncv8wg65r49rkc9fh8xf8a7vb2wnldn";
      })

      (pkgs.fetchFirefoxAddon {
        name = "trilium"; 
        url = "https://github.com/zadam/trilium-web-clipper/releases/download/v0.3.1/trilium_web_clipper-0.3.1-an+fx.xpi";
        sha256 = "0nv928pfr465qdkm82cgiignny5ql8lmkm4jaqm769qjc98l3miz";
      })

      (pkgs.fetchFirefoxAddon {
        name = "keepassxc"; 
        url = "https://addons.mozilla.org/firefox/downloads/file/3934394/keepassxc_browser-1.7.12-fx.xpi";
        sha256 = "1226q0vhh6h0a1jxbwsfkasfxy0fm81jxd4vyp4scpzqh7q454pq";
      })

      (pkgs.fetchFirefoxAddon {
        name = "Social_Fixer"; 
        url = "https://addons.mozilla.org/firefox/downloads/file/3866725/social_fixer-28.0.0-fx.xpi";
        sha256 = "0yj45rcx0l30k28fjm9579nr5nms5b1bw8qijgxj2l4viz8sfbh6";
      })

      (pkgs.fetchFirefoxAddon {
        name = "tridactyl"; 
        url = "https://addons.mozilla.org/firefox/downloads/file/3926466/tridactyl-1.22.1-an+fx.xpi";
        sha256 = "1xmh30crgy2w3x5yxhayaz59bjy722wwlxray38l4qaiczfkf0zd";
      })
    ];

    extraPolicies = {
      CaptivePortal = false;
      DisableFirefoxStudies = true;
      DisablePocket = true;
      DisableTelemetry = true;
      DisableFirefoxAccounts = true;
      FirefoxHome = {
        Pocket = false;
        Snippets = false;
      };
       UserMessaging = {
         ExtensionRecommendations = false;
         SkipOnboarding = true;
       };
       ExtensionSettings = {
         "*" ={
    instalation_mode = "allow";
         };

       };
    };

    extraPrefs = ''
      // Show more ssl cert infos
      lockPref("security.identityblock.show_extended_validation", true);
    '';
  };
    in 
    {
#      environment.systemPackages = with pkgs; [
      home-manager.users.andrey = { pkgs, ... }: {
        home.packages = [
          myFirefox
          pkgs.firefox-esr-unwrapped
          pkgs.tridactyl-native
        ];
      };  
    
    }



