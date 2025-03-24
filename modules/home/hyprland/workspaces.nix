{ ... }:

{
  wayland.windowManager.hyprland.settings.workspace = [
    # Primary monitor
    "1, monitor:DP-1, default:true, persistent:true"
    "2, monitor:DP-1, default:true, persistent:true"
    "3, monitor:DP-1, default:true, persistent:true"
    "4, monitor:DP-1, default:true, persistent:true"

    # Seconday monitor
    "5, monitor:DP-2, default:true, persistent:true"

    # Special workspaces
    "special:specialTerminal, on-created-empty: uwsm app -- wezterm --class specialTerminal"
    "special:specialAudio, on-created-empty: uwsm app -- wezterm --class specialAudio start -- pulsemixer"
    "special:specialFileManager, on-created-empty: uwsm app -- wezterm --class specialFileManager start -- yazi"
  ];
}
