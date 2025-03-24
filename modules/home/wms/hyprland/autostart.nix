{ ... }:

{
  wayland.windowManager.hyprland.settings = {
    exec-once = [
      "hyprctl setcursor Bibata-Modern-Ice 24"
      "sleep 1; exec uwsm app -- nixtop"
      "sleep 5; exec uwsm app -- cider"
      "uwsm app -- steam -silent"
    ];
  };
}
