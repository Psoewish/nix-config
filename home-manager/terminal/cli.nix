{pkgs, ...}: {
  home.packages = with pkgs; [
    wget
    curl
    tldr
    zip
    unzip
    killall
    xdotool
    jq
    grc
    ripgrep
    htop
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
  };
}
