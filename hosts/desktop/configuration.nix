{ ... }:

{
  imports =
    [ ./hardware-configuration.nix ];

  networking.hostName = "nixos-desktop";

  config.allowUnfree = true;

  system.stateVersion = "24.11";
}
