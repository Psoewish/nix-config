{...}: {
  imports = [
    ./hardware-configuration.nix
    ../../system/core
    ../../system/optional/hyprland.nix
    # ../../system/optional/qtile.nix
    ../../system/optional/steam.nix
  ];

  networking.hostName = "nixos-desktop";
  system.stateVersion = "24.11";
}
