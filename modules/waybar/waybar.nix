{ config, pkgs, ... }:

{
  programs.waybar.enable = true;
  home.file."~/.config/waybar/waybar.css".source = ./waybar.css;
}