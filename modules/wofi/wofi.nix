{ config, pkgs, ... }:

{
  home.file."~/.config/wofi.css".source = ./wofi.css;

}
