{ ... }:

{
  programs.waybar = {
    enable = true;
    systemd.enable = true;
    settings = {
      mainBar = {
        output = "DP-1";
        layer = "top";
        margin = "10 10 0 10";
        spacing = 10;
        modules-left = [
          "hyprland/workspaces"
        ];
        modules-center = [
          "clock"
        ];
        modules-right = [
          "mpris"
          "tray"
          "privacy"
          "bluetooth"
          "network"
        ];

        "hyprland/workpaces" = {
          format = "{icon}";
          persistent-workspaces = {
            DP-1 = 4;
          };
          format-icons = {
            active = "󰪥";
            empty = "";
            urgent = "󰀨";
            default = "";
          };
        };
        "clock" = {
          format = "{:%H:%M}";
          tooltip-format = "{:%Y-%m-%d}";
        };
        "mpris" = {
          player = "cider";
          format = "{artist} - {title}";
          max-length = 80;
          interval = 1;
        };
        "tray" = {
          icon-size = 18;
          icon-spacing = 10;
        };
        "privacy" = {
          icon-size = 18;
          icon-spacing = 10;
        };
        "bluetooth" = {
          format = "󰂯";
          format-on = "󰂯";
          format-off = "󰂲";
        };
        network = {
          format = "{icon} {bandwidthDownBytes} {bandwidthUpBytes}";
          format-ethernet = "";
          format-disconnected = "󰈂";
        };
      };
    };
  };
}
