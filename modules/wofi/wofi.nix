{ config, pkgs, ... }:

{
  programs.wofi.enable = true;
  home.file."~/.config/wofi/wofi.css".source = ./wofi.css;
}
