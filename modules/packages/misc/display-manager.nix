{ pkgs, ... }:

let
  greeter = "${pkgs.greetd.tuigreet}/bin/tuigreet";
  session = "${pkgs.hyprland}/bin/Hyprland";
  username = "psoewish";
in {
  services.greetd = {
    enable = true;
    settings = {
      initial_session= {
        command = "${session}";
        user = "${username}";
      };
      default_session = {
        command = "${greeter} --asterisks --remember --remember-user-session --time -cmd ${session}";
        user = "greeter";
      };
    };
  };
}
