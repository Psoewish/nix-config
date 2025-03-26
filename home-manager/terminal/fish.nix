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
      nixhelper = ''
        set -l nixdir ~/nix-config
        switch $argv[1]
          case rebuild
            switch $argv[2]
              case now
                command sudo nixos-rebuild switch --flake $nixdir
              case later
                command sudo nixos-rebuild boot --flake $nixdir
              case "*"
                __nixhelper_build_man
            end
          case update
            command nix flake update --flake $nixdir
          case upgrade
            switch $argv[2]
              case now
                command nix flake update --flake $nixdir
                command sudo nixos-rebuild switch --flake $nixdir
              case later
                command nix flake update --flake $nixdir
                command sudo nixos-rebuild boot --flake $nixdir
              case "*"
                __nixhelper_upgrade_man
            end
          case "*"
            __nixhelper_man
        end
      '';
      __nixhelper_man = ''
          echo (set_color --bold)"NixOS helper script manual"
          echo
          echo "       Command | Description"(set_color normal)
          echo "         build | Commands for rebuilding your system"
          echo "        update | Update the flake.lock file"
          echo "       upgrade | Update the flake.lock file and rebuild"
        '';
      __nixhelper_build_man = ''
          echo (set_color --bold)"Build commands"
          echo
          echo "       Command | Description"(set_color normal)
          echo "           now | Rebuilds your system and switched to the new configuration"
          echo "         later | Rebuilds your system and switches to the new configuration upon rebooting"
        '';
      __nixhelper_upgrade_man = ''
          echo (set_color --bold)"Upgrade commands"
          echo
          echo "       Command | Description"(set_color normal)
          echo "           now | Update and rebuild immediately"
          echo "         later | Update and rebuild after reboot"
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
    ];
  };
}
