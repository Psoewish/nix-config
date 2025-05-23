{pkgs, ...}: {
  home.packages = with pkgs; [
    wget
    curl
    tldr
    zip
    unzip
    killall
    xdotool
    grc
    ripgrep
  ];

  programs = {
    zoxide = {
      enable = true;
      options = ["--cmd cd"];
    };
    fzf = {
      enable = true;
      defaultCommand = "fd --type f";
      defaultOptions = [
        "--height ~100%"
      ];
    };
    eza = {
      enable = true;
      git = true;
      icons = "auto";
      colors = "always";
      extraOptions = [
        "--all"
        "--group-directories-first"
      ];
    };
    bat = {
      enable = true;
      extraPackages = with pkgs.bat-extras; [
        batman
        batdiff
        batgrep
        prettybat
      ];
    };
    fd = {
      enable = true;
      hidden = true;
    };
    jq.enable = true;
    btop.enable = true;
  };
  services = {
    tldr-update.enable = true;
  };
}
