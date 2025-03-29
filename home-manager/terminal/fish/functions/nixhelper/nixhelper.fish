function nixhelper
    set -l nixdir ~/nix-config
    set -l main_args system home
    set -l action_args rebuild update upgrade
    set -l time_args now later

    if not contains $argv[1] $main_args
        __nixhelper_man
    end

    switch $argv[1]
        case system
            switch $argv[2]
                case rebuild
                    switch $argv[3]
                        case now
                            echo "Rebuilding your system and switching to the new configuration."
                            command sudo nixos-rebuild switch --flake $nixdir

                        case later
                            echo "Rebuilding your system and switching to the new configuration on reboot"
                            command sudo nixos-rebuild boot --flake $nixdir

                        case "*"
                            echo "Please specify when to switch to the new configuration."
                            __nixhelper_rebuild_man
                    end

                case upgrade
                    switch $argv[3]
                        case now
                            echo "Updating your flake.lock and switching to the new configuration."
                            command sudo nixos-rebuild boot --upgrade --flake $nixdir

                        case later
                            echo "Updating your flake.lock and switching to the new configuration on reboot."
                            command sudo nixos-rebuild boot --upgrade --flake $nixdir

                        case "*"
                            echo "Please specify when to switch to the new configuration."
                            __nixhelper_upgrade_man
                    end

                case update
                    echo "Updating your flake.lock"
                    command nix flake update --flake $nixdir
            end

        case home
            switch $argv[2]
                case now
                    echo "Rebuilding home-manager and switching to the new configuration."
                    command home-manager switch --flake $nixdir

                case later
                    echo "Rebuilding home-manager and switching to the new configuration on reboot."
                    command home-manager boot --flake $nixdir

                case "*"
                    echo "Please specify when to switch to the new configuration."
                    echo "ADD HELP SECTION FOR THIS"
            end

        case "*"
            echo "How did you even get here?"
    end
end
