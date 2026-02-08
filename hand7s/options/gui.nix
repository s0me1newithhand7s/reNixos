{
  lib,
  pkgs,
  config,
  self,
  ...
}: let
  cfg = config.home.gui;
  ayugram = self.inputs.ayugram-desktop.packages.${pkgs.system}.ayugram-desktop;
  freesm-launcher = self.inputs.freesm.packages.${pkgs.system}.freesmlauncher;
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
        "DWL"
        "Sway"
        "River"
        "Hyprland"
        "None"
      ];

      description = ''
        This option allows to choose current desktop session. All
        three: riverwm, sway and Hyprland has their own config. Almost
        all of them - their respectful software. WIP.
      '';
    };
  };

  config = lib.mkIf cfg.enable {
    home = {
      packages = with pkgs;
        [
          throne
          heroic
          vesktop
          ayugram
          anki-bin
          obsidian
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
          hyprpolkitagent
          freesm-launcher
          bitwarden-desktop
          qbittorrent-enhanced

          (discord.override {
            withVencord = true;
            withOpenASAR = false;
          })
        ]
        ++ lib.optionals (
          cfg.sessionType == "Hyprland"
        ) [
          fum
          timg
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

    programs = {
      chromium.enable = true;
      spicetify.enable = true;
      vscode.enable = true;
      ghostty.enable = true;
      git.enable = true;
    };

    services = with lib.mkDefault; {
      hyprpaper.enable = true;
      kdeconnect.enable = true;
    };
  };

  meta.maintainers = with lib.maintainers; [
    s0me1newithhan7ds
    # aka hand7s
  ];
}
