{...}: {
  programs.qutebrowser = {
    enable = true;
    settings = {
      colors.webpage.darkmode.enabled = true;
      colors.webpage.preferred_color_scheme = "dark";
      colors.webpage.darkmode.policy.images = "never";
      downloads.position = "bottom";
      downloads.remove_finished = 300000;
      auto_save.session = true;
      scrolling.bar = "never";
      scrolling.smooth = true;
      statusbar.show = "in-mode";
      hints.chars = "arstneio";
      tabs.last_close = "startpage";
      tabs.max_width = 250;
      tabs.show = "multiple";
      content.cookies.accept = "all";
      content.headers.user_agent = "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.75 Safari/537.36";
      content.autoplay = false;
    };
    extraConfig = ''
      c.tabs.padding = {'top': 8, 'bottom': 8, 'right': 8, 'left': 8}
      config.bind('<Alt+Ctrl+C>', 'config-cycle tabs.show always never')
      config.bind('<Alt+Ctrl+Up>', 'set tabs.position top')
      config.bind('<Alt+Ctrl+Down>', 'set tabs.position bottom')
      config.bind('<Alt+Ctrl+Left>', 'set tabs.position left')
      config.bind('<Alt+Ctrl+Right>', 'set tabs.position right')
    '';
  };
}
