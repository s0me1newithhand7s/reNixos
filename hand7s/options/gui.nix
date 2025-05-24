{
    lib,
    pkgs,
    config,
    inputs,
    ...
}: let
    cfg = config.home.gui;
    ayugram-desktop = inputs.ayugram-desktop.packages.${pkgs.system}.ayugram-desktop;
    freesm-launcher = inputs.freesm.packages.${pkgs.system}.freesmlauncher;
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
            type = lib.types.enum [
                "Sway"
                "River"
                "Hyprland"
                "None"
            ];
            default = "None";
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
                    vesktop
                    nekoray
                    anki-bin
                    obsidian
                    playerctl
                    mindustry
                    bitwarden
                    lan-mouse
                    parsec-bin
                    pwvucontrol
                    easyeffects
                    ayugram-desktop
                    element-desktop
                    hyprpolkitagent
                    freesm-launcher

                    (discord.override {
                        withVencord = true;
                        withOpenASAR = false;
                    })
                ]
                ++ lib.optionals (
                    cfg.sessionType == "Sway"
                ) [
                    swaykbdd
                    sway-contrib.grimshot
                    sway-contrib.inactive-windows-transparency
                    autotiling-rs
                    sway-audio-idle-inhibit
                ]
                ++ lib.optionals (
                    cfg.sessionType == "River"
                ) [
                    wayshot
                    waylock
                    wayidle
                ]
                ++ lib.optionals (
                    cfg.sessionType == "Hyprland"
                ) [
                    hyprpanel
                    grimblast
                ];
        };

        programs = {
            chromium.enable = true;
            spicetify.enable = true;
            vscode.enable = true;
            fuzzel.enable = true;
            ghostty.enable = true;
            firefox.enable = true;
        };

        services = with lib.mkDefault; {
            hyprpaper.enable = true;
        };
    };

    meta.maintainers = with lib.maintainers; [
        s0me1newithhan7ds
        # aka hand7s
    ];
}
