{
    osConfig,
    pkgs,
    lib,
    ...
}: {
    home = {
        packages = with pkgs;
            [
                xh
                fd
                gh
                sd
                nvd
                git
                dust
                sops
                comma
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
                gitoxide
                tty-clock
                deploy-rs
                nixos-anywhere
                wireguard-tools
                yubico-piv-tool
                libimobiledevice
                nix-output-monitor
                yubikey-touch-detector
                yubikey-personalization
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
