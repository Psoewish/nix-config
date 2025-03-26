function nixhelper
    set -l nixdir ~/nix-config
    switch $argv[1]
        case rebuild
            switch $argv[2]
                case now
                    command sudo nixos-rebuild switch --flake $nixdir
                case later
                    command sudo nixos-rebuild boot --flake $nixdir
                case test
                    command sudo nixos-rebuild test --flake $nixdir
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
end
