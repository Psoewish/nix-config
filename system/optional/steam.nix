{pkgs, ...}: {
  programs.steam = {
    enable = true;
    extraCompatPackages = with pkgs; [proton-ge-bin];
  };

  # Modding stuff
  environment.systemPackages = with pkgs; [
    r2modman
  ];
}
