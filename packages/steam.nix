{pkgs, ...}: {
  programs.steam = {
    enable = true;
    extraCompatPackages = with pkgs; [proton-ge-bin steamtinkerlaunch];
    protontricks.enable = true;
  };

  # Modding stuff
  environment.systemPackages = with pkgs; [
    r2modman
  ];
}
