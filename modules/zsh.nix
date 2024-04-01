{ config, pkgs, ... }:

{
  home.packages = with pkgs; [ kitty ];

  programs.zsh = {
    enable = true;
  };
  
}