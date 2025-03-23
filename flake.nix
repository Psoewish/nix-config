{
  description = "Psoewish's NixOS Flake";

  inputs = {
  # Nix Packages
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

  # Home Manager
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

  # Zen Browser
    zen-browser = {
      url = "github:0xc000022070/zen-browser-flake";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, home-manager, ... } @inputs:
  let
    system = "x86_64-linux";
    lib = nixpkgs.lib;
  in {
    nixosConfigurations = {
      nixos-desktop = lib.nixosSystem {
        inherit system;
        specialArgs = { inherit inputs; };
        modules = [
          ./hosts/desktop/configuration.nix
          ./modules/core
          ./modules/packages
          home-manager.nixosModules.home-manager {
            home-manager = {
              useGlobalPkgs = true;
              useUserPackages = true;
              users.psoewish = import ./home/home.nix;
              extraSpecialArgs = { inherit inputs; };
            };
          }
        ];
      };
    };
  };
}
