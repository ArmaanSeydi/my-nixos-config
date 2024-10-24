{ config, pkgs, ... }:

{ 

  imports =
    [ 
      ../modules/git.nix
      ../modules/kitty.nix
      ../modules/gnome-extentions.nix
    ];

  # Home Manager needs a bit of information about you and the paths it should
  # manage.
  home.username = "armowon";
  home.homeDirectory = "/home/armowon";

  # Home-manager version. DO NOT CHANGE THIS!
  home.stateVersion = "24.05";

  # Allowing unfree pkgs
  nixpkgs.config.allowUnfree = true;

  # Bash Configs
  programs.bash.enable = true;
  programs.bash.bashrcExtra = ''PS1='\[\e[96m\]\u\[\e[0m\] \[\e[1m\]@\[\e[0m\] \[\e[96m\]\h\[\e[0m\] \[\e[1m\]:\[\e[0m\] \[\e[32m\]\w\[\e[0m\] \[\e[1m\]-\[\e[0m\] \[\e[93m\]\t\n\[\e[0;1m\]\$\[\e[0m\] ' '';

  # The home.packages option allows you to install Nix packages into your
  # environment.
  home.packages = with pkgs; [
    firefox
    vlc
    vscode
    qv2ray
    telegram-desktop
  ];

  # Home Manager is pretty good at managing dotfiles. The primary way to manage
  # plain files is through 'home.file'.
  home.file = {
    # # Building this configuration will create a copy of 'dotfiles/screenrc' in
    # # the Nix store. Activating the configuration will then make '~/.screenrc' a
    # # symlink to the Nix store copy.
    # ".screenrc".source = dotfiles/screenrc;

    # # You can also set the file content immediately.
    # ".gradle/gradle.properties".text = ''
    #   org.gradle.console=verbose
    #   org.gradle.daemon.idletimeout=3600000
    # '';
  };

  # Home Manager can also manage your environment variables through
  # 'home.sessionVariables'. If you don't want to manage your shell through Home
  # Manager then you have to manually source 'hm-session-vars.sh' located at
  # either
  #
  #  ~/.nix-profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  ~/.local/state/nix/profiles/profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  /etc/profiles/per-user/armowon/etc/profile.d/hm-session-vars.sh
  #
  home.sessionVariables = {
    EDITOR = "code";
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  # Required to autoload fonts from packages installed via Home Manager
  fonts.fontconfig.enable = true; 
}
