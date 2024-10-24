{ config, pkgs, ... }:

{	

	home.packages = with pkgs; [ kitty ];

  programs.kitty = { 
	  enable = true;

	  font = {
	    name = "JetBrainsMono Nerd Font Mono";
		  package = (pkgs.nerdfonts.override { fonts = [ "JetBrainsMono" ]; });
		  size = 14;
	  };

	  settings = {
			enable_audio_bell = false;
			background_opacity = "0.95";
			background_blur = 1;
			confirm_os_window_close = 0;
			window_border_width = "3px";
			dynamic_background_opacity = "yes";
			active_border_color = "#EBDBB2";
			inactive_border_color = "#928374";
			cursor_shape = "block";
			shell_integration = "enabled no-cursor";
			# hide_window_decorations = "yes";
			window_margin_width = 4;
			window_padding_width = 4;
			tab_bar_edge = "top";
			tab_bar_style = "powerline";
		  tab_powerline_style = "slanted";
			active_tab_foreground =  "#1D2021";
			active_tab_background =  "#EBDBB2";
			inactive_tab_foreground =  "#1D2021";
			inactive_tab_background =  "#928374";
			tab_bar_margin_width = "4";
		  tab_activity_symbol = "> ";
			tab_title_max_length = 14;
	  };

	  theme = "Gruvbox Dark";

		shellIntegration ={
			enableBashIntegration = false;
		};
	};
}