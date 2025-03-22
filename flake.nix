{
  description = "Psoewish's NixOS Flake";

  inputs = {
  # Nix Packages
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

  # Zen Browser
    zen-browser = {
      url = "github:0xc000022070/zen-browser-flake";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, ... } @inputs:
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
          ./system/core
          ./system/packages
        ];
      };
    };
  };
}
