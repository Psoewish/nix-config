{ pkgs, ...}:

{
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
  ];
  programs = {
    zoxide = {
      enable = true;
      options = [ "--cmd cd" ];
    };
    fzf = {
      enable = true;
      defaultCommand = "fd --type f";
      defaultOptions = [
        "--height ~100%"
      ];
      colors = {
        fg = "#908caa";
        bg = "#191724";
        hl = "#ebbcba";
        "fg+" = "#e0def4";
        "bg+" = "#26233a";
        "hl+" = "#ebbcba";
        border = "#403d52";
        header = "#31748f";
        gutter = "#191724";
        spinner = "#f6c177";
        info = "#9ccfd8";
        pointer = "#c4a7e7";
        marker = "#eb6f92";
        prompt = "#908caa";
      };
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
      themes = {
        rose-pine = {
          src = pkgs.fetchFromGitHub {
            owner = "rose-pine";
            repo = "tm-theme";
            rev = "45061dc3fda6bd2126305df8fd6c81ef5a0f9c27";
            sha256 = "sha256-N68TUiNQkyVdgEFQ4EH1PpSAjHCsavha7moXHUg89/w=";
          };
          file = "dist/themes/rose-pine.tmTheme";
        };
      };
      config = {
        theme = "rose-pine";
      };
      extraPackages = with pkgs.bat-extras; [
        batman
        batdiff
        batgrep
        prettybat
      ];
    };
  };
}
