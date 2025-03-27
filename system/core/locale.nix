{...}: {
  i18n = {
    defaultLocale = "en_US.UTF-8";
    supportedLocales = [
      "en_US.UTF-8/UTF-8"
      "nl_BE.UTF-8/UTF-8"
    ];
  };
  services.xserver.xkb = {
    layout = "us";
    variant = "";
  };
  time.timeZone = "Europe/Brussels";
}
