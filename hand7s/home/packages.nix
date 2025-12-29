{
  osConfig,
  pkgs,
  lib,
  ...
}: {
  home = {
    packages = with pkgs;
      [
        fd
        gh
        sd
        xh
        dua
        nvd
        gat
        dust
        sops
        rsync
        procs
        sbctl
        gping
        dconf
        tokei
        comma
        ifuse
        trippy
        bottom
        kubectl
        yt-dlp
        ripgrep
        gitoxide
        tty-clock
        deploy-rs
        monero-cli
        nixos-anywhere
        wireguard-tools
        yubico-piv-tool
        yubikey-manager
        libimobiledevice
        nix-output-monitor
        yubikey-touch-detector
        yubikey-personalization
        netbird-ui
      ]
      ++ lib.optionals (
        osConfig.networking.hostName == "s0mePC-nix"
      ) [
        mindustry
        thunderbird
        tetrio-desktop
        min-ed-launcher
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
