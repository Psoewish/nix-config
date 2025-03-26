function nixhelper
    set -l nixdir ~/nix-config
    set -l main_args rebuild update upgrade
    set -l time_args now later

    if not contains $argv[1] $main_args
        __nixhelper_man
    end

    switch $argv[1]

        case rebuild
            if not contains $argv[2] $time_args
                echo "Please specify when to switch to the new configuration."
                __nixhelper_rebuild_man
            else if string match -q $argv[2] now
                echo "Rebuilding your system and switching to the new configuration."
                command sudo nixos-rebuild switch --flake $nixdir
            else if string match -q $argv[2] later
                echo "Rebuilding your system and switching to the new configuration on reboot"
                command sudo nixos-rebuild boot --flake $nixdir
            end

        case upgrade
            if not contains $argv[2] $time_args
                echo "Please specify when to switch to the new configuration."
                __nixhelper_upgrade_man
            else if string match -q $argv[2] now
                echo "Updating your flake.lock and switching to the new configuration."
                command nix flake update --flake $nixdir
                command sudo nixos-rebuild boot --flake $nixdir
            else if string match -q $argv[2] later
                echo "Updating your flake.lock and switching to the new configuration on reboot."
                command nix flake update --flake $nixdir
                command sudo nixos-rebuild boot --flake $nixdir
            end

        case update
            echo "Updating your flake.lock"
            command nix flake update --flake $nixdir
    end
end
