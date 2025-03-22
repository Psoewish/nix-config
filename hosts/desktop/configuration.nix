{ ... }:

{
  imports = [ ./hardware-configuration.nix ];

  networking.hostName = "nixos-desktop";
  system.stateVersion = "24.11";
}
