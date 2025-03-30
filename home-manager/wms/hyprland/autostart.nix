{...}: {
  wayland.windowManager.hyprland.settings = {
    exec-once = [
      "hyprctl setcursor Bibata-Modern-Ice 24"
      "uwsm app -- pypr"
      "sleep 1; exec uwsm app -- discord"
      "sleep 5; exec uwsm app -- cider-2"
      "uwsm app -- steam -silent"
    ];
  };
}
