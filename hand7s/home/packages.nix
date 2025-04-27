{
    osConfig,
    inputs,
    pkgs,
    lib,
    ...
}: {
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
