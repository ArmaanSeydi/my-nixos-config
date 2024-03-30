{ config, pkgs, ... }:

{
  programs.git = {
    enable = true;
    userName = "Armaan Seydi";
    userEmail = "armaanseydi@gmail.com";
    aliases = {
      # nothing yet
    };
  };
}