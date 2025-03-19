{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    # foot
    # fish
    starship
    zoxide
    fzf
    stow
    wget
    curl
    git
    lazygit
    # helix
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
