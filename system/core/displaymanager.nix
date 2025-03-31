{ pkgs, ... }:

{
  services.displayManager = {
    enable = true;
    # autoLogin.enable = true;
    # autoLogin.user = "psoewish";
    # defaultSession = "qtile";
    execCmd = "${pkgs.lightdm}/bin/lightdm";
  };
}
