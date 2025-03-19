{ config, ... }:

{
  users.users.psoewish = {
    isNormalUser = true;
    description = "psoewish";
    extraGroups = [ "networkmanager" "wheel" "qemu" "kvm" "libvirtd" ];
  };
}
