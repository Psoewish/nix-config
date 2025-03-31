{ pkgs, ... }:

{
  services.xserver= {
    enable = true;
    windowManager.qtile = {
      enable = true;
      extraPackages = python3Packages: with python3Packages; [
        qtile-extras
      ];
    };
  };

  environment.systemPackages = with pkgs.xorg; [
    xinit
    xorgserver
    xf86inputevdev
    xf86inputlibinput
    xf86videoati
  ];
}
