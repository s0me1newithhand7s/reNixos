{
  lib,
  pkgs,
  config,
  self,
  ...
}: let
  cfg = config.home.gui;
  ayugram = self.inputs.ayugram-desktop.packages.${pkgs.stdenv.hostPlatform.system}.ayugram-desktop;
  freesm-launcher = self.inputs.freesm.packages.${pkgs.stdenv.hostPlatform.system}.freesmlauncher;
in {
  options.home.gui = {
    enable = lib.mkEnableOption ''
      Enabling this option will allow you to activate GUI Software,
      that exist in my home-manager setup. Enabling this, as you can
      see, is depending on hostname of my system. To bypass this,
      either delete expression in `home.nix`, or change hostname
      to yours.
    '';

    sessionType = lib.mkOption {
      default = "None";
      type = lib.types.enum [
        "Hyprland"
        "Niri"
      ];

      description = ''
        This option allows to choose current desktop session.
      '';
    };
  };

  config = lib.mkIf cfg.enable {
    home = {
      packages = with pkgs;
        [
          throne
          heroic
          scrcpy
          vesktop
          ayugram
          soteria
          anki-bin
          mindustry
          lan-mouse
          monero-gui
          parsec-bin
          proton-pass
          pwvucontrol
          easyeffects
          thunderbird
          chatterino7
          tetrio-desktop
          freesm-launcher
          bitwarden-desktop
          steam-rom-manager
          qbittorrent-enhanced

          (discord.override {
            withVencord = true;
            withOpenASAR = false;
          })
        ]
        ++ lib.optionals (
          cfg.sessionType == "Hyprland" || cfg.sessionType == "Niri"
        ) [
          fum
          dconf
          iwgtk
          tokei
          ifuse
          yt-dlp
          termusic
          playerctl
          tty-clock
          grimblast
          monero-cli
          brightnessctl
          hyprsysteminfo
          yubico-piv-tool
          yubikey-manager
          libimobiledevice
          yubikey-touch-detector
          yubikey-personalization
          self.inputs.noctalia.packages.${system}.default
        ];
    };

    gtk.enable = true;

    programs = {
      chromium.enable = true;
      firefox.enable = true;
      spicetify.enable = true;
      ghostty.enable = true;
      git.enable = true;
      obsidian.enable = true;
    };

    services = {
      hyprpaper.enable = true;
      kdeconnect.enable = true;
    };
  };

  meta.maintainers = with lib.maintainers; [
    s0me1newithhan7ds
    # aka hand7s
  ];
}
