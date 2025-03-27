{...}: {
  wayland.windowManager.hyprland.settings.workspace = [
    # Primary monitor
    "1, monitor:DP-1, default:true, persistent:true"
    "2, monitor:DP-1, default:true, persistent:true"
    "3, monitor:DP-1, default:true, persistent:true"
    "4, monitor:DP-1, default:true, persistent:true"

    # Seconday monitor
    "5, monitor:DP-2, default:true, persistent:true"

    # Special workspaces
    "special:dropterm, on-created-empty: $uwsm $term --class dropterm"
    "special:dropaudio on-created-empty: $uwsm $term --class dropaudio start -- pulsemixer"
    "special:dropfile, on-created-empty: $uwsm $term --class dropfile start -- yazi"
  ];
}
