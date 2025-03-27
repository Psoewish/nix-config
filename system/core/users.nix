{pkgs, ...}: {
  users.users.psoewish = {
    isNormalUser = true;
    useDefaultShell = true;
    description = "psoewish";
    extraGroups = ["networkmanager" "wheel" "qemu" "kvm" "libvirtd"];
  };
  # users.defaultUserShell = pkgs.zsh;
}
