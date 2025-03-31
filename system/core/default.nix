{...}: {
  imports = [
    ./git.nix
    ./users.nix
    ./automount.nix
    ./bootloader.nix
    ./graphics.nix
    ./bluetooth.nix
    ./nix-settings.nix
    ./network.nix
    ./locale.nix
    ./pipewire.nix
  ];
}
