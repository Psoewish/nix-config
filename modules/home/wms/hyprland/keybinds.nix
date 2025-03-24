{ ... }:

{
  wayland.windowManager.hyprland.settings = {
    "$mod" = "SUPER";
    "$shiftmod" = "SUPER SHIFT";
    "$ctrlmod" = "SUPER CONTROL";

    "$uwsm" = "exec, uwsm app --";

    "$terminal" = "wezterm";
    "$launcher" = "rofi -show drun";
    "$fileManager" = "wezterm start --class filemanager -- yazi";
    "$browser" = "qutebrowser";
    "$browser2" = "zen-browser";
    "$screenshot" = "grimblast --notify";

    "$media" = "playerctl -p 'cider'";
    
    bind = [
      # Application launchers
      "$mod, RETURN, $uwsm $terminal"
      "$mod, E, $uwsm $fileManager"
      "$mod, B, $uwsm $browser"
      "$shiftmod, B, $uwsm $browser2"
      "$mod, SPACE, $uwsm $launcher"

      # Screenshots
      ", PRINT, $uwsm $screenshot --freeze copysave area"
      "SHIFT, PRINT, $uwsm $screenshot copysave output"

      # Window management
      "$mod, V, togglefloating"
      "$mod, Q, killactive"
      "$mod, F, fullscreenstate, 1 3"
      "$shiftmod, F, fullscreenstate, 3 3"
      
      "$mod, I, layoutmsg, addmaster"
      "$mod, O, layoutmsg, removemaster"

      "$ctrlmod, down, layoutmsg, mfact exact 0.5"
      "$ctrlmod, left, layoutmsg, mfact -0.5"
      "$ctrlmod, right, layoutmsg, mfact +0.5"

      "$mod, left, movefocus, l"
      "$shiftmod, left, movewindow, l"
      "$mod, right, movefocus, r"
      "$shiftmod, right, movewindow, r"
      "$mod, up, movefocus, u"
      "$shiftmod, up, movewindow, u"
      "$mod, down, movefocus, d"
      "$shiftmod, down, movewindow, d"

      # Scratchpads
      "$shiftmod, RETURN, togglespecialworkspace, dropterm"
      "$shiftmod, E, togglespecialworkspace, dropfile"
      "$shiftmod, P, togglespecialworkspace, dropaudio"
    ] ++ (builtins.concatLists (builtins.genList (i:
      let ws = i + 1;
      in [
        "$mod, code:1${toString i}, workspace, ${toString ws}"
        "$shiftmod, code:${toString i}, movetoworkspace, ${toString ws}"
      ]) 5));
      
    bindm = [
      "$mod, mouse:272, movewindow"
      "$mod, mouse273, resizewindow"
    ];

    bindel = [
      ", XF86AudioRaiseVolume, $uwsm wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+"
      ", XF86AudioLowerVolume, $uwsm wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"
    ];

    bindl = [
      ", XF86AudioMute, $uwsm wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"
      ", XF86AudioPlay, $uwsm $media play-pause"
      ", XF86AudioPrev, $uwsm $media previous"
      ", XF86AudioNext, $uwsm $media next"
    ];
  };
}
