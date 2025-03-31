{pkgs, ...}: let
  greeter = "${pkgs.greetd.tuigreet}/bin/tuigreet";
  session = "uwsm start hyprland-uwsm.desktop";
  username = "psoewish";
in {
  services.greetd = {
    enable = true;
    settings = {
      initial_session = {
        command = "${session}";
        user = "${username}";
      };
      default_session = {
        command = "${greeter} --asterisks --remember --remember-user-session --time -cmd ${session}";
        user = "greeter";
      };
    };
  };

  programs.hyprland = {
    enable = true;
    withUWSM = true;
  };

  xdg.portal.extraPortals = with pkgs; [
    xdg-desktop-portal-gtk
    xdg-desktop-portal-wlr
  ];
}
