{ ... }:

{
  wayland.windowManager.hyprland = {
    settings = {
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
}
  
