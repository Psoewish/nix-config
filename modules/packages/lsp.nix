{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    hyprls
    gopls
    zls
    nil
    marksman
    markdown-oxide
    vscode-langservers-extracted
    yaml-language-server
  ];
}
