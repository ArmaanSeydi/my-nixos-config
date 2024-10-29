{ config, pkgs, lib, ... }:

{ 
  imports = [ 
    ../git.nix
    # ../modules/kitty.nix
    ../modules/gnome-extensions.nix
    ../modules/hyprland.nix
  ];

  home.username = "armowon";
  home.homeDirectory = "/home/armowon";

  # Bash Configs
  programs.bash.enable = true;
  programs.bash.bashrcExtra = ''PS1='\[\e[96m\]\u\[\e[0m\] \[\e[1m\]@\[\e[0m\] \[\e[96m\]\h\[\e[0m\] \[\e[1m\]:\[\e[0m\] \[\e[32m\]\w\[\e[0m\] \[\e[1m\]-\[\e[0m\] \[\e[93m\]\t\n\[\e[0;1m\]\$\[\e[0m\] ' '';

  # Packages
  home.packages = with pkgs; [
    firefox
    vlc
    vscode
    qv2ray
    telegram-desktop
  ];

  nixpkgs.config.allowUnfree = true;

  home.sessionVariables = {
    EDITOR = "code";
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  # Required to autoload fonts from packages installed via Home Manager
  fonts.fontconfig.enable = true; 

  # Home-manager version. DO NOT CHANGE THIS!
  home.stateVersion = "24.05";

}
