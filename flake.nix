{

  description = "My NixOS Flake";

  inputs = {
    nixpkgs.url = "nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, home-manager, ... }:
    let
      lib = nixpkgs.lib;
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
    in {
      #nixos-rebuild <operator> --flake <path> 
      nixosConfigurations.nixos = lib.nixosSystem {
        inherit system;
        modules = [ ./nixos/configuration.nix ];
      };
      #home-manager <operator> --flake <path> #your-username
      homeConfigurations.armowon = home-manager.lib.homeManagerConfiguration {
        inherit pkgs;
        modules = [ ./home-manager/home.nix ];
      };
    };
}
