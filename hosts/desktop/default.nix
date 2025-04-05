{...}: {
  imports = [
    ./hardware-configuration.nix
    ../../system/core
  ];

  networking.hostName = "nixos-desktop";
  system.stateVersion = "24.11";
}
