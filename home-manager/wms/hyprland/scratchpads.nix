{...}:
let
  terminal = "scratchterm";
  terminalCmd = "uwsm app -- wezterm --class ${terminal}";
  mixer = "scratchmixer";
  mixerCmd = "uwsm app -- wezterm --class ${mixer} start -- pulsemixer";
  filemanager = "scratchfiles";
  filemanagerCmd = "uwsm app -- wezterm --class ${filemanager} start -- yazi";

in {
  wayland.windowManager.hyprland.settings = {
    workspace = [
      "special:${terminal}, on-created-empty: ${terminalCmd}"
      "special:${mixer}, on-created-empty: ${mixerCmd}"
      "special:${filemanager}, on-created-empty: ${filemanagerCmd}"
    ];

    windowrule = [
      # Terminal
      "workspace special:${terminal}, class:(${terminal})"
      "float, center, class:(${terminal})"
      "size 50%, class:(${terminal})"

      # Audio mixer
      "workspace special:${mixer}, class:(${mixer})"
      "float, center, class:(${mixer})"
      "size 50%, class:(${mixer})"

      # File manager
      "workspace special:${filemanager}, class:(${filemanager})"
      "float, center, class:(${filemanager})"
      "size 50%, class:(${filemanager})"
    ];
  };
}
