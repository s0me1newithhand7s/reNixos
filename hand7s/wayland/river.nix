{
    config,
    pkgs,
    lib,
    ...
}: {
    wayland = {
        windowManager = {
            river = {
                enable = lib.mkIf (
                    config.home.gui.sessionType == "River"
                )
                true;

                settings = {
                    default-layout = "rivertile";
                    focus-follows-cursor = "normal";
                    border-width = 2;

                    declare-mod = [
                        "locked"
                        "normal"
                    ];

                    xwayland = {
                        enable = true;
                    };

                    map = {
                        normal = {
                            "Alt Q" = "close";
                            "Alt S" = "spawn fuzzel";
                            "Alt Return" = "spawn ghostty";
                            "Alt L" = "spawn hyprlock";
                            "Alt F" = "toggle-fullscreen";

                            "Alt+Shift S" = "spawn wayshot --clipboard";
                            "Alt+Shift E" = "exit";
                            "Alt+Shift Space" = "toggle-float";

                            "Alt Up" = "send-to-output next";
                            "Alt Down" = "send-to-output previous";
                            "Alt Right" = "send-to-output next";
                            "Alt Left" = "send-to-output previous";

                            "Alt 1" = "set-focused-tags 0";
                            "Alt 2" = "set-focused-tags 1";
                            "Alt 3" = "set-focused-tags 2";
                            "Alt 4" = "set-focused-tags 3";
                            "Alt 5" = "set-focused-tags 4";
                            "Alt 6" = "set-focused-tags 5";
                            "Alt 7" = "set-focused-tags 6";
                            "Alt 8" = "set-focused-tags 7";
                            "Alt 9" = "set-focused-tags 8";
                            "Alt H" = "toggle-focused-tags 20";

                            "Alt+Shift 1" = "set-view-tags 0";
                            "Alt+Shift 2" = "set-view-tags 1";
                            "Alt+Shift 3" = "set-view-tags 2";
                            "Alt+Shift 4" = "set-view-tags 3";
                            "Alt+Shift 5" = "set-view-tags 4";
                            "Alt+Shift 6" = "set-view-tags 5";
                            "Alt+Shift 7" = "set-view-tags 6";
                            "Alt+Shift 8" = "set-view-tags 7";
                            "Alt+Shift 9" = "set-view-tags 8";
                            "Alt+Shift H" = "set-view-tags 20";

                            "Alt+Control 1" = "toggle-focused-tags 0";
                            "Alt+Control 2" = "toggle-focused-tags 1";
                            "Alt+Control 3" = "toggle-focused-tags 2";
                            "Alt+Control 4" = "toggle-focused-tags 3";
                            "Alt+Control 5" = "toggle-focused-tags 4";
                            "Alt+Control 6" = "toggle-focused-tags 5";
                            "Alt+Control 7" = "toggle-focused-tags 6";
                            "Alt+Control 8" = "toggle-focused-tags 7";
                            "Alt+Control 9" = "toggle-focused-tags 8";
                            "Alt+Control H" = "toggle-focused-tags 20";

                            "Alt+Shift+Control 1" = "toggle-view-tags 0";
                            "Alt+Shift+Control 2" = "toggle-view-tags 1";
                            "Alt+Shift+Control 3" = "toggle-view-tags 2";
                            "Alt+Shift+Control 4" = "toggle-view-tags 3";
                            "Alt+Shift+Control 5" = "toggle-view-tags 4";
                            "Alt+Shift+Control 6" = "toggle-view-tags 5";
                            "Alt+Shift+Control 7" = "toggle-view-tags 6";
                            "Alt+Shift+Control 8" = "toggle-view-tags 7";
                            "Alt+Shift+Control 9" = "toggle-view-tags 8";
                            "Alt+Shift+Control H" = "toggle-view-tags 20";
                        };

                        map-pointer = {
                            normal = {
                                "Alt BTN_LEFT" = "move-view";
                                "Alt BTN_RIGHT" = "resize-view";
                            };
                        };
                    };
                };

                extraConfig = ''
                    ${lib.getExe' pkgs.river "riverctl"} keyboard-layout -options "grp:caps_toggle" "us,ru"
                    ${lib.getExe' pkgs.river "riverctl"} spawn ${lib.getExe' pkgs.systemd "systemctl"} --user start hyprpaper.service
                    ${lib.getExe' pkgs.river "riverctl"} spawn ${lib.getExe' pkgs.systemd "systemctl"} --user start hyprpolkitagent.service
                    ${lib.getExe' pkgs.river "riverctl"} spawn ${lib.getExe' pkgs.systemd "systemctl"} --user start yambar.service
                    ${lib.getExe' pkgs.river "riverctl"} spawn ${lib.getEce pkgs.wayidle} -t=300 ${lib.getExe pkgs.brightnessctl} -s set 10
                    ${lib.getExe' pkgs.river "riverctl"} spawn ${lib.getEce pkgs.wayidle} -t=600 ${lib.getExe pkgs.waylock}
                '';
            };
        };
    };
}
