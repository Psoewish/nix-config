{...}:
let
  uwsm = "uwsm start --";
  terminal = "${uwsm} wezterm";
  launcher = "${uwsm} rofi -show drun";
  fileManager = "${uwsm} wezterm start --class filemanager -- yazi";
  browser = "${uwsm} qutebrowser";
  browser2 = "${uwsm} zen-beta";
  screenshot = "${uwsm} grimblast --notify";
  media = "${uwsm} playerctl -p 'spotify'";

  mod = "SUPER";
  shiftmod = "SUPER SHIFT";
  ctrlmod = "SUPER CONTROL";

in {
  wayland.windowManager.hyprland.settings = {
    bind = [
      "${mod}, RETURN, ${terminal}"
      "${mod}, E, ${fileManager}"
      "${mod}, B, ${browser}"
      "${shiftmod}, B, ${browser2}"
      "${mod}, SPACE, ${launcher}"

      ", PRINT, ${screenshot} --freeze copysave area"
      "SHIFT, PRINT, ${screenshot} copysave output"

      "${mod}, V, togglefloating"
      "${mod}, Q, killactive"
      "${mod}, F, fullscreenstate, 1 3"
      "${shiftmod}, F, fullscreenstate, 3 3"

      "${mod}, I, layoutmsg, addmaster"
      "${mod}, O, layoutmsg, removemaster"

      "${ctrlmod}, left, resizeactive, -50 0"
      "${ctrlmod}, down, resizeactive, 0 50"
      "${ctrlmod}, up, resizeactive, 0 -50"
      "${ctrlmod}, right, resizeactive, 50 0"
      "${ctrlmod}, m, layoutmsg, mfact exact 0.5"

      "${mod}, left, movefocus, l"
      "${mod}, down, movefocus, d"
      "${mod}, up, movefocus, u"
      "${mod}, right, movefocus, r"
      "${shiftmod}, left, movewindow, l"
      "${shiftmod}, down, movewindow, d"
      "${shiftmod}, up, movewindow, u"
      "${shiftmod}, right, movewindow, r"

      "${mod}, 1, workspace, 1"
      "${mod}, 2, workspace, 2"
      "${mod}, 3, workspace, 3"
      "${mod}, 4, workspace, 4"
      "${mod}, 5, workspace, 5"
      "${shiftmod}, 1, movetoworkspace, 1"
      "${shiftmod}, 2, movetoworkspace, 2"
      "${shiftmod}, 3, movetoworkspace, 3"
      "${shiftmod}, 4, movetoworkspace, 4"
      "${shiftmod}, 5, movetoworkspace, 5"
    ];

    bindm = [
      "${mod}, mouse:272, movewindow"
      "${mod}, mouse273, resizewindow"
    ];

    bindel = [
      ", XF86AudioRaiseVolume, $uwsm wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+"
      ", XF86AudioLowerVolume, $uwsm wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"
    ];

    bindl = [
      ", XF86AudioMute, ${uwsm} wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"
      ", XF86AudioPlay, ${media} play-pause"
      ", XF86AudioPrev, ${media} previous"
      ", XF86AudioNext, ${media} next"
    ];
  };
}
