{ config, pkgs, ... }:

{
  home.packages = with pkgs; [ git ];

  programs.git = {
    enable = true;
    userName = "Armaan Seydi";
    userEmail = "armaanseydi@gmail.com";
    aliases = {
      # nothing yet
    };
  };
}