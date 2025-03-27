{...}: {
  programs.wezterm = {
    enable = true;
    extraConfig = ''
      local config = {
        default_prog = { 'fish' },
        hide_tab_bar_if_only_one_tab = true,
        window_close_confirmation = "NeverPrompt",
        enable_wayland = true,
        window_padding = {
          left = 10,
          right = 10,
          bottom = 10,
          top = 10,
        },
      }

      return config
    '';
  };
}
