{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    zoxide
    fzf
    grc
    stow
    wget
    curl
    bat
    btop
    eza
    jq
    xdotool
    killall
    zip
    unzip
    tldr
    ripgrep
  ];
}
