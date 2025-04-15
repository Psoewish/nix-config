{pkgs, ...}: {
  programs.password-store = {
    enable = true;
    settings = {
      PASSWORD_STORE_DIR = "/home/psoewish/.password-store";
      PASSWORD_STORE_CLIP_TIME = "300";
      EDITOR = "hx";
    };
  };

  programs.gpg.enable = true;

  services.gpg-agent = {
    enable = true;
    pinentryPackage = pkgs.pinentry-all;
  };

  home.packages = with pkgs; [
    qtpass
  ];
}
