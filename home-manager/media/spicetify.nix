{ inputs, pkgs, ... }:
let
  spicePkgs = inputs.spicetify-nix.legacyPackages.${pkgs.stdenv.system};

in {
  programs.spicetify = {
    enable = true;
    enabledExtensions = with spicePkgs.extensions; [
      autoSkipVideo
      fullAppDisplay
      keyboardShortcut
    ];
    enabledSnippets = [
      "Rounded 'Now Playing' Bar"
      "Rounded Images"
      "Auto-hide Friends"
      "Smooth Reveal Playlist Gradient"
      "Hide Audiobooks Button"
      "Hide Podcast Button"
      "Hide Mini Player Button"
    ];
    windowManagerPatch = true;
  };
}
