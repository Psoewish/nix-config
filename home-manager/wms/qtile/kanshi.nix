{ ... }:

{
  services.kanshi = {
    enable = true;
    settings = [
      {
        profile.name = "desktop";
        profile.outputs = [
          {
            criteria = "DP-1";
            mode = "2560x1440@144Hz";
            position = "0,0";
          }
          {
            criteria = "DP-1";
            mode = "2560x1440@60Hz";
            position = "0,-1440";
          }
        ];
      }
    ];
  };
}
