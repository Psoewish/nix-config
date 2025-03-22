{
  system.activationScripts.text = ''
    stow -d $HOME/nix-config/dotfiles -t $HOME/.config --adopt -R .
  '';
}
