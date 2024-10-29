{ config, pkgs, lib, ... }:

{ 
  imports = [ 
    ../modules/git/git.nix
    ../modules/kitty/kitty.nix
    ../modules/gnome-extensions/gnome-extensions.nix
    ../modules/hyprland/hyprland.nix
    ../modules/wofi/wofi.nix
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

    # Fonts
    ir-standard-fonts
    (nerdfonts.override { fonts = [ "JetBrainsMono" ]; })
    corefonts
    vistafonts
    font-awesome
  ];


  home.sessionVariables = {
    EDITOR = "code";
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  # Required to autoload fonts from packages installed via Home Manager
  fonts.fontconfig.enable = true; 

  # Home-manager version. DO NOT CHANGE THIS!
  home.stateVersion = "24.05";
  nixpkgs.config.allowUnfree = true;

}
