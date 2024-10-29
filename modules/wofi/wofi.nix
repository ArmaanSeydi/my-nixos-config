{ config, pkgs, ... }:

{
  home.file."~/.config/wofi/wofi.css".source = ./wofi.css;
}
