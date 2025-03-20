{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    foot
    fish
    starship
    zoxide
    fzf
    stow
    wget
    curl
    git
    lazygit
    helix
    killall
    yazi
    bat
    btop
    eza
    ripgrep
    tldr
    unzip
    zip
  ];
}
