{ ... }:

{
  imports = [
    ./users.nix
    ./nfs.nix
    ./bootloader.nix
    ./graphics.nix
    ./bluetooth.nix
    ./nix-settings.nix
    ./network.nix
    ./locale.nix
    ./pipewire.nix
  ];
}
