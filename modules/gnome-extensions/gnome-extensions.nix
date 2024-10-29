{ config, pkgs, lib, ... }:

{
  home.packages = with pkgs; [ 
    #Tools
    dconf2nix
    gnome-shell-extensions
    gnome-tweaks
    gnome-menus
    #Extentions
    gnomeExtensions.appindicator
    gnomeExtensions.gradient-top-bar
    gnomeExtensions.top-bar-organizer
    gnomeExtensions.logo-menu
   ];

  dconf = {
    enable = true;

    settings = {
      "org/gnome/shell/extensions/logo-menu" = {
        hide-icon-shadow = true;
        menu-button-icon-click-type = 1;
        menu-button-icon-image = 23;
        show-activities-button = true;
        show-lockscreen = false;
        symbolic-icon = true;
        use-custom-icon = false;
      };

      "org/pshow/gradienttopbar" = {
        opaque-on-maximized = true;
      };

      "org/gnome/shell/extensions/top-bar-organizer" = {
        center-box-order = [ "activities" ];
        left-box-order = [ "LogoMenu" "dateMenu" ];
        right-box-order = [ "Workspaceactivities" "screenRecording" "screenSharing" "dwellClick" "a11y" "keyboard" "quickSettings" ];
      };
    };
  };

}