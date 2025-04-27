{
    osConfig,
    inputs,
    pkgs,
    lib,
    ...
}: let
    freesm-launcher = inputs.freesm.packages.${pkgs.system}.freesmlauncher;
in {
    home = {
        packages = with pkgs;
            [
                gh
                sd
                nvd
                git
                dust
                procs
                gping
                dconf
                tokei
                ifuse
                trippy
                bottom
                kubectl
                yt-dlp
                ripgrep
                tty-clock
                freesm-launcher
                libimobiledevice
                nix-output-monitor
            ]
            ++ lib.optionals (
                osConfig.networking.hostName == "s0mePC-nix"
            ) [
                tetrio-desktop
                netbird-ui
                thunderbird
                mindustry
                qbittorrent-enhanced
            ]
            ++ lib.optionals (
                osConfig.networking.hostName == "s0melapt0p-nix"
            ) [
                iwgtk
                brightnessctl
            ];
    };
}
