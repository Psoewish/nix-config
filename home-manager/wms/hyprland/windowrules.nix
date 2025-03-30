{...}: {
  wayland.windowManager.hyprland.settings.windowrulev2 = [
    "suppressevent maximize, class:.*"
    "nofocus, class:^$, title:^$, xwayland:1, floating:1, fullscreen:0, pinned:0"

    # Suspend hypridle while fullscreen app is active
    "idleinhibit fullscreen, class:^(*)$"
    "idleinhibit fullscreen, title:^(*)$"
    "idleinhibit fullscreen, fullscreen:1"

    # Floating windows
    "float, class:(steam|filemanager)"
    "size 80%, class:(steam|filemanager)"

    # Secondary display apps
    "workspace 5, class:(discord|vesktop|Cider|com.github.th_ch.youtube_music)"

    # Start games on workspace 4
    "workspace 4, class:(steam_app_\d*)"
  ];
}
