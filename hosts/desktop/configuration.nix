{ ... }:

{
  imports =
    [ ./hardware-configuration.nix ];

    networking.hostName = "nixos-desktop";

    fileSystems."/mnt/unraid" = {
      device = "192.168.1.100:/mnt/user/home";
      fsType = "nfs";
      options = [ "x-systemd.automount" "noauto" "x-systemd.idle-timeout=3600" ];
    };
    boot.supportedFilesystems = [ "nfs" ];

  system.stateVersion = "24.11";
}
