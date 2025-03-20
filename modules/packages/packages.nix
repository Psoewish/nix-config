{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    cider-2
    gh
    firefox
    vesktop
helix
foot
fish
qutebrowser
  ];
}
