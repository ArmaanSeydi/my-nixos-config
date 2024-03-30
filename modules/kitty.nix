{ config, pkgs, ... }:

{
  programs.kitty = {
	  enable = true;
	  font = {
	    name = "JetBrainsMono Nerd Font Mono";
		  package = (pkgs.nerdfonts.override { fonts = [ "JetBrainsMono" ]; });
		  size = 12;
	  };
	  settings = {
		enable_audio_bell = false;
	  };
	  theme = "Gruvbox Dark";
	};
}