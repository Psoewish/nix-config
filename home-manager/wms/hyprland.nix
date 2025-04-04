{ pkgs, ... }:
let
  # uwsm helper, set to an empty string to disable
  uwsm = "uwsm app --";

  # Define applications
  terminal = "${uwsm} wezterm";
  launcher = "${uwsm} rofi -show drun";
  filemanager = "${uwsm} ${terminal} start -- yazi";
  browser = "${uwsm} qutebrowser";
  browser2 = "${uwsm} zen-beta";
  screenshot = "${uwsm} grimblast --notify";
  media = "${uwsm} playerctl -p 'spotify'";

  # Scratchpad definitions
  scratchterm = "scratchterm";
  scratchtermcmd = "${terminal} start --class ${scratchterm}";
  scratchmixer = "scratchmixer";
  scratchmixercmd = "${terminal} start --class ${scratchmixer} -- pulsemixer";
  scratchfiles = "scratchfiles";
  scratchfilescmd = "${terminal} start --class ${scratchfiles} -- yazi";

  # Hotkey helpers
  mod = "SUPER";
  shiftmod = "SUPER SHIFT";
  ctrlmod = "SUPER CONTROL";

  # Extra packages
  extrapackages = with pkgs; [
    hypridle
    grimblast
    wl-clipboard
    dunst
    waybar
    hyprshot
  ];

in {
  wayland.windowManager.hyprland = {
    enable = true;
    systemd.enableXdgAutostart = true;
    systemd.variables = ["--all"];
    
    settings = {

      # Autostart
      exec-once = [
        "hyprctl setcursor Bibata-Modern-Ice 24"
        "sleep 1; exec ${uwsm} discord"
        "sleep 3; exec ${uwsm} spotify"
        "exec ${uwsm} steam -silent"
      ];

      # Displays
      monitor = [
        "DP-1, preferred, auto, auto"
        "DP-2, preferred, auto-up, auto"
      ];

      # Workspaces
      workspace = [
        # Normal workspaces
        "1, monitor:DP-1, default:true, persistent:true"
        "2, monitor:DP-1, persistent:true"
        "3, monitor:DP-1, persistent:true"
        "4, monitor:DP-1, persistent:true"
        "5, monitor:DP-2, default:true, persistent:true"

        # Special workspaces (scratchpads)
        "special:${scratchterm}, on-created-empty:${scratchtermcmd}"
        "special:${scratchmixer}, on-created-empty:${scratchmixercmd}"
        "special:${scratchfiles}, on-created-empty:${scratchfilescmd}"
      ];

      windowrule = [
        "suppressevent maximize, class:.*"
        "nofocus, class:^$, title:^$, xwayland:1, floating:1, fullscreen:0, pinned:0"

        # Disable hypridle for fullscreen apps
        "idleinhibit fullscreen, class:^(*)$"
        "idleinhibit fullscreen, title:^(*)$"
        "idleinhibit fullscreen, fullscreen:1"

        # Floating windows
        "float, size 65%, class:steam"

        # Always put these on my secondary monitor
        "workspace 5, class:discord"
        "workspace 5, class:vesktop"
        "workspace 5, class:Cider"
        "workspace 5, class:com.github.th_ch.youtube_music"
        "workspace 5, class:spotify"

        # Start games on workspace 4
        "workspace 4, class:steam_app_\\d*"

        # Scratchpads
        # Terminal
        "workspace special:${scratchterm}, class:${scratchterm}"
        "float, center, class:${scratchterm}"
        "size 50%, class:${scratchterm}"

        # Audio mixer
        "workspace special:${scratchmixer}, class:${scratchmixer}"
        "float, center, class:${scratchmixer}"
        "size 50%, class:${scratchmixer}"

        # File manager
        "workspace special:${scratchfiles}, class:${scratchfiles}"
        "float, center, class:${scratchfiles}"
        "size 50%, class:${scratchfiles}"
      ];

      # Keybinds
      bind = [
        "${mod}, RETURN, exec, ${terminal}"
        "${mod}, E, exec, ${filemanager}"
        "${mod}, B, exec, ${browser}"
        "${shiftmod}, B, exec, ${browser2}"
        "${mod}, SPACE, exec, ${launcher}"

        ", PRINT, exec, ${screenshot} --freeze copysave area"
        "SHIFT, PRINT, exec, ${screenshot} copysave output"

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

        "${shiftmod}, RETURN, togglespecialworkspace, ${scratchterm}"
        "${shiftmod}, E, togglespecialworkspace, ${scratchfiles}"
        "${shiftmod}, P, togglespecialworkspace, ${scratchmixer}"
      ];

      bindm = [
        "${mod}, mouse:272, movewindow"
        "${mod}, mouse273, resizewindow"
      ];

      bindel = [
        ", XF86AudioRaiseVolume, exec, ${uwsm} wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+"
        ", XF86AudioLowerVolume, exec, ${uwsm} wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"
      ];

      bindl = [
        ", XF86AudioMute, exec, ${uwsm} wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"
        ", XF86AudioPlay, exec, ${media} play-pause"
        ", XF86AudioPrev, exec, ${media} previous"
        ", XF86AudioNext, exec, ${media} next"
      ];

      # General settings
      general = {
        border_size = 1;
        gaps_in = 5;
        gaps_out = 10;
        layout = "master";
      };
      
      decoration = {
        rounding = 8;
        dim_inactive = false;
      };
      
      animations = {
        enabled = true;
        animation = [
          "windows, 1, 1, default, popin"
          "workspaces, 1, 5, default, fade"
          "layers, 1, 5, default, fade"
        ];
      };
      
      misc = {
        enable_swallow = true;
      };
      
      cursor = {
        no_hardware_cursors = false;
        default_monitor = "DP-1";
      };
      
      master = {
        allow_small_split = true;
        special_scale_factor = 1;
        mfact = 0.5;
        new_status = "slave";
        new_on_top = false;
        new_on_active = "none";
      };
    };
  };
  home.packages = extrapackages;
}
