{ pkgs, ... }:

{
  home.packages = with pkgs; [ fish ];
  programs.fish = {
    enable = true;
    shellAliases = {
      shx = "sudo hx";
      cat = "bat";
      man = "batman";
      mkdir = "mkdir -pv";
      cp = "rsync -ah --info=progress2";
      ls = "eza";
      ll = "eza -l";
      lt = "eza -T -L=3 --git-ignore";
    };
    interactiveShellInit = ''
      set -U fish_greeting
      set -gx EDITOR hx
      set sponge_purge_only_on_exit true
    '';
    functions = {
      copycat = "cat $argv | wl-copy";
      build = ''
        if [ -z $argv ]
          command echo 'Argument can\'t be empty.'
          command echo ' '
          command echo '    --now      |    Rebuilds your system and switched to the new configuration'
          command echo '    --later    |    Rebuilds your system and switches to the new configuration upon rebooting'
          command echo '    --test     |    Checks if your configuration is valid'
        else
          switch $argv[1]
            case --now
              command sudo nixos-rebuild switch --flake ~/nix-config
            case --later
              command sudo nixos-rebuild boot --flake ~/nix-config
            case --test
              command sudo nixos-rebuild test --flake ~/nix-config
            case -h
              command echo '    --now      |    Rebuilds your system and switched to the new configuration'
              command echo '    --later    |    Rebuilds your system and switches to the new configuration upon rebooting'
              command echo '    --test     |    Checks if your configuration is valid'
            case '*'
              command echo $argv' is not a valid argument'
              command echo '    --now      |    Rebuilds your system and switched to the new configuration'
              command echo '    --later    |    Rebuilds your system and switches to the new configuration upon rebooting'
              command echo '    --test     |    Checks if your configuration is valid'
            end
          end
      '';
    };
    plugins = with pkgs.fishPlugins; [
      { name = "autopair"; src = autopair.src; }
      { name = "puffer"; src = puffer.src; }
      { name = "sponge"; src = sponge.src; }
      { name = "grc"; src = grc.src; }
      { name = "bang-bang"; src = bang-bang.src; }
      { name = "git-abbr"; src = git-abbr.src; }
      { name = "pure"; src = pure.src; }
      # { name = "transient-fish"; src = transient-fish.src; }
    ];
  };
}
