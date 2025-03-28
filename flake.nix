{
  description = "Psoewish's NixOS Flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";

    zen-browser.url = "github:0xc000022070/zen-browser-flake";
    zen-browser.inputs.nixpkgs.follows = "nixpkgs";
    nixcord.url = "github:kaylorben/nixcord";
    nixcord.inputs.nixpkgs.follows = "nixpkgs";
    stylix.url = "github:danth/stylix";
    stylix.inputs.nixpkgs.follows = "nixpkgs";
    alejandra.url = "github:kamadorueda/alejandra";
    alejandra.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = {
    self,
    nixpkgs,
    home-manager,
    nixcord,
    stylix,
    alejandra,
    ...
  } @ inputs: let
    system = "x86_64-linux";
    lib = nixpkgs.lib;
  in {
    nixosConfigurations = {
      nixos-desktop = lib.nixosSystem {
        inherit system;
        specialArgs = {inherit inputs;};
        modules = [
          {
            environment.systemPackages = [alejandra.defaultPackage.${system}];
          }
          ./hosts/desktop/configuration.nix
          stylix.nixosModules.stylix
          home-manager.nixosModules.home-manager
          {
            home-manager = {
              useGlobalPkgs = true;
              useUserPackages = true;
              users.psoewish = import ./home-manager;
              extraSpecialArgs = {inherit inputs;};
              backupFileExtension = "backup";
              sharedModules = [
                nixcord.homeManagerModules.nixcord
              ];
            };
          }
        ];
      };
    };
  };
}
