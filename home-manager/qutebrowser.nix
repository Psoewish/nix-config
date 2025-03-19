{ ... }:

{
  programs.qutebrowser = {
    enable = true;
    loadAutoconfig = true;
    settings = {
      colors.webpage.darkmode.enabled = true;
      auto_save.session = true;
      scrolling.bar = "never";
      scrolling.smooth = true;
      statusbar.show = "in-mode";
      hints.chars = "arstneio";
      tabs.pinned.shrink = false;
      tabs.pinned.frozen = true;
      tabs.position = "top";
      tabs.last_close = "startpage";
      tabs.width = 200;
      fonts.default_family = "CaskaydiaCove Nerd Font";
      fonts.default_size = "12pt";
    };
    quickmarks = {
      sonarr = "https://sonarr.psoewish.com/";
      unraid = "https://unraid.psoewish.com/";
      radarr = "https://radarr.psoewish.com/";
      plex = "https://plex.psoewish.com/web/index.html#!/";
      jellyseerr = "https://app.plex.tv/auth/";
      subs = "https://bazarr.psoewish.com/login";
      sabnzbd = "https://sabnzbd.psoewish.com/";
      nzbhydra = "https://nzbhydra.psoewish.com/";
      prowlarr = "https://prowlarr.psoewish.com/";
      dozzle = "https://dozzle.psoewish.com/";
      flatnotes = "https://flatnotes.psoewish.com/login?redirect=/";
      homebridge = "https://homebridge.psoewish.com/login";
      traefik = "https://traefik.psoewish.com/dashboard/";
      adguard = "https://adguard.psoewish.com/login.html";
      adminer = "https://adminer.psoewish.com/";
      yt = "https://www.youtube.com/";
      unmanic = "https://unmanic.psoewish.com/unmanic/ui/dashboard/";
      dots = "https://github.com/Psoewish/dotfiles";
    };
    keyBindings = {
      # "<alt-ctrl-c>" = "config-cycle tabs.show always never";
    };
  };
}
