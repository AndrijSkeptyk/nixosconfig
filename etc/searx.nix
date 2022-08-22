{ config, pkgs, lib, ... }:

{
  imports = [ ];


  services.searx.enable = true;
  services.searx.settings.server.secret_key= "anvaryl";
  services.searx.settings.engines = [ 
#    {keep_only = "google";}
  {
     name = "apk mirror";
     engine  = "apk";
     disabled = false;
     category = "android";
   }

   {
     name = "bing";
     shortcut = "b1";
   }
 ];
 services.searx.settings.general.categories = ["general"
 "android"

]; 



#  - name: apk mirror
#  - name : ahmia
#  - name : arch linux wiki
#  - name : archive is
#  - name : arxiv
#####  - name : base
#  - name : wikipedia
#  - name : bing
#  - name : bing images
#  - name : bing news
#  - name : bing videos
#  - name : bitbucket
#  - name : btdigg
#  - name : ccc-tv
#  - name : ccengine
#  - name : crossref
#  - name : currency
#  - name : deezer
#  - name : deviantart
#  - name : ddg definitions
#####  - name : digbt
#  - name : digg
#  - name : erowid
#####  - name : elasticsearch
#  - name : wikidata
#  - name : duckduckgo
#  - name : duckduckgo images
#  - name : etools
#  - name : etymonline
#####  - name : ebay
#  - name : 1x
#  - name : fdroid
#  - name : flickr
#  - name : free software directory
##### - name : freesound
#  - name : frinkiac
#  - name : genius
#  - name : gigablast
#  - name : gentoo
#  - name : gitlab
#  - name : github
#  - name : codeberg
#  - name : google
#  - name : google images
#  - name : google news
#  - name : google videos
#  - name : google scholar
#  - name : google play apps
#  - name : google play movies
#  - name : geektimes
#  - name : habrahabr
#  - name : hoogle
#  - name : ina
#  - name : invidious
#  - name: kickass
#  - name : library genesis
#  - name : library of congress
#  - name : lobste.rs
#  - name : microsoft academic
#  - name : mixcloud
#  - name : npm
#  - name : not evil
#  - name : nyaa
#  - name : openairedatasets
#  - name : openairepublications
#####  - name : opensemanticsearch
#  - name : openstreetmap
#  - name : openrepos
#  - name : pdbe
#  - name : photon
#  - name : piratebay
#  - name : pubmed
#  - name : qwant
#  - name : qwant images
#  - name : qwant news
#####  - name: library
#####  - name: recoll library reference
#  - name : reddit
#####  - name : scanr structures
#  - name: sepiasearch
#  - name : soundcloud
#  - name : stackoverflow
#  - name : searchcode code
#  - name : framalibre
#####  - name : searx
#  - name : semantic scholar
#####  - name : spotify
#####  - name : solr
#  - name : startpage
#  - name : tokyotoshokan
#  - name : solidtorrents
#  - name : torrentz
#  - name : torch
#####  - name : uncyclopedia
#####  - name : urbandictionary
#  - name : unsplash
#  - name : yahoo
#  - name : yahoo news
#  - name : youtube
#  - name : yggtorrent
#  - name : dailymotion
#  - name : vimeo
#  - name : wiby
#  - name : wikibooks
#  - name : wikinews
#  - name : wikiquote
#  - name : wikisource
#  - name : wiktionary
#  - name : wikiversity
#  - name : wikivoyage
#  - name : wolframalpha
#  - name : dictzone
#  - name : mymemory translated
#  - name : 1337x
#  - name : duden
#  - name : seznam
#  - name : mojeek
#  - name : naver
#  - name : rubygems
#  - name : peertube
#  - name : mediathekviewweb
#####  - name : yacy
#  - name : rumble
#####  - name : ubuntuwiki
#####  - name: git grep
#####  - name: locate
#####  - name: find
#####  - name: pattern search in files
#####  - name: regex search in files
   }
