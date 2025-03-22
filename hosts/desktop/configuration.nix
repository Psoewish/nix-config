{ ... }:

{
  imports =
    [ ./hardware-configuration.nix ];

  config = {
    networking.hostName = "nixos-desktop";
    config.allowUnfree = true;
    system.stateVersion = "24.11";
  };
}
