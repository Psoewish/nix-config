{ pkgs, ...}:

{
  boot = {
    loader = {
      systemd-boot.enable = true;
      systemd-boot.configurationLimit = 10;
      efi.canTouchEfiVariables = true;
      timeout = 2;
    };
    initrd = {
      enable = true;
      systemd.enable = true;
    };
    consoleLogLevel = 3;
    kernelPackages = pkgs.linuxPackages_zen;
    supportedFileSystems = [ "ntfs" "nfs" ];
  };
}
