{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    cider-2
    gh
    firefox
    vesktop
    qutebrowser
    inputs.zen-browser.x86_64-linux.default
  ];
}
