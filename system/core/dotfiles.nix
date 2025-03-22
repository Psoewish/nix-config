{ pkgs, ... }:

{
  system.activationScripts = {
    stowScript.text = ''
      ${pkgs.stow}/bin/stow -d /home/psoewish/nix-config/dotfiles -t /home/psoewish/.config --adopt --restow .
    '';
  };
}
