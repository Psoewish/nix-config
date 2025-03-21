{ pkgs, inputs, ... }:

{
  environment.systemPackages = with pkgs; [
    cider-2
    gh
    firefox
    vesktop
    qutebrowser
    inputs.zen-browser.packages."${system}".default
  ];
}
