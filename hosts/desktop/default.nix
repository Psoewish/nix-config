{...}: {
  imports = [
    ./hardware-configuration.nix
    ../core
  ];

  networking.hostName = "nixos-desktop";
  system.stateVersion = "24.11";
}
