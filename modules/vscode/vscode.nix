{ config, pkgs, ... }:

{	

	home.packages = with pkgs; [ vscode ];
  home.file."~/.config/Code/User/setting.json".source = ./setting.json;
  home.file."~/.config/Code/User/vscode.css".source = ./vscode.css;
  home.file."~/.config/Code/User/script.js".source = ./script.js;

  programs.vscode.enable = true;
}