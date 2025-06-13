{
    config,
    pkgs,
    lib,
    ...
}: {
    wayland = {
        windowManager = {
            sway = {
                enable = lib.mkIf (
                    config.home.gui.sessionType == "Sway"
                )
                true;

                package = pkgs.sway;

                config = {
                    bindkeysToCode = true;
                    defaultWorkspace = "workspace number 1";
                    workspaceAutoBackAndForth = true;

                    bars = [];

                    window = {
                        border = 2;
                        titlebar = false;
                        hideEdgeBorders = "both";
                    };

                    floating = {
                        border = 2;
                        titlebar = false;
                        modifier = "Mod1";
                    };

                    focus = {
                        forceWrapping = true;
                        mouseWarping = true;

                        followMouse = "always";
                        newWindow = "smart";
                        wrapping = "yes";
                    };

                    gaps = {
                        vertical = null;
                        horizontal = null;

                        outer = null;
                        inner = null;

                        top = null;
                        bottom = null;
                        left = null;
                        right = null;

                        smartGaps = false;
                        smartBorders = "no_gaps";
                    };

                    startup = [
                        {
                            command = "${lib.getExe' pkgs.systemd "systemctl"} --user start hyprpaper.service";
                        }

                        {
                            command = "${lib.getExe' pkgs.systemd "systemctl"} --user start hypridle.service";
                        }

                        {
                            command = "${lib.getExe' pkgs.systemd "systemctl"} --user start hyprpolkitagent.service";
                        }

                        {
                            command = "${lib.getExe pkgs.sway-audio-idle-inhibit}";
                        }

                        {
                            command = "${lib.getExe pkgs.autotiling-rs}";
                        }

                        {
                            command = "${lib.getExe pkgs.swaykbdd}";
                        }

                        {
                            command = "${lib.getExe' pkgs.systemd "systemctl"} --user start yambar.service";
                        }
                    ];

                    keybindings = lib.mkOptionDefault {
                        "Mod1+q" = "kill";
                        "Mod1+s" = "exec ${lib.getExe pkgs.fuzzel}";
                        "Mod1+Return" = "exec ${lib.getExe pkgs.ghostty}";
                        "Mod1+l" = "exec ${lib.getExe pkgs.swaylock}";
                        "Mod1+f" = "fullscreen toggle";
                        "Mod1+Shift+s" = "exec ${lib.getExe pkgs.sway-contrib.grimshot} --notify copy area /home/hand7s/Pictures/Screenshots/$(date '+%y%m%d_%H-%M-%s').png";

                        "Mod1+Shift+e" = "exec ${lib.getExe' pkgs.sway "swaymsg"} exit";
                        "Mod1+Space" = "floating toggle";
                        "Mod1+r" = "mode resize";

                        "Mod1+Left" = "focus left";
                        "Mod1+Right" = "focus right";
                        "Mod1+Up" = "focus up";
                        "Mod1+Down" = "focus down";

                        "Mod1+1" = "workspace number 1";
                        "Mod1+2" = "workspace number 2";
                        "Mod1+3" = "workspace number 3";
                        "Mod1+4" = "workspace number 4";
                        "Mod1+5" = "workspace number 5";
                        "Mod1+6" = "workspace number 6";
                        "Mod1+7" = "workspace number 7";
                        "Mod1+8" = "workspace number 8";
                        "Mod1+9" = "workspace number 9";
                        "Mod1+0" = "workspace number 10";
                        "Mod1+h" = "scratchpad show";

                        "Mod1+Shift+1" = "move container to workspace number 1";
                        "Mod1+Shift+2" = "move container to workspace number 2";
                        "Mod1+Shift+3" = "move container to workspace number 3";
                        "Mod1+Shift+4" = "move container to workspace number 4";
                        "Mod1+Shift+5" = "move container to workspace number 5";
                        "Mod1+Shift+6" = "move container to workspace number 6";
                        "Mod1+Shift+7" = "move container to workspace number 7";
                        "Mod1+Shift+8" = "move container to workspace number 8";
                        "Mod1+Shift+9" = "move container to workspace number 9";
                        "Mod1+Shift+0" = "move container to workspace number 10";
                        "Mod1+Shift+h" = "move scratchpad";

                        "XF86AudioRaiseVolume" = "exec ${lib.getExe' pkgs.wireplumber "wpctl"} set-volume @DEFAULT_AUDIO_SINK@ 5%+";
                        "XF86AudioLowerVolume" = "exec ${lib.getExe' pkgs.wireplumber "wpctl"} set-volume @DEFAULT_AUDIO_SINK@ 5%-";
                        "XF86AudioMute" = "exec ${lib.getExe' pkgs.wireplumber "wpctl"} set-mute @DEFAULT_AUDIO_SINK@ toggle";

                        "XF86AudioPlay" = "exec ${lib.getExe pkgs.playerctl} play-pause";
                        "XF86AudioPrev" = "exec ${lib.getExe pkgs.playerctl} previous";
                        "XF86AudioNext" = "exec ${lib.getExe pkgs.playerctl} next";

                        "XF86MonBrightnessDown" = "exec ${lib.getExe pkgs.brightnessctl} set 5%-";
                        "XF86MonBrightnessUp" = "exec $${lib.getExe pkgs.brightnessctl} set +5%";
                    };

                    modes = {
                        resize = {
                            "Left" = "resize shrink width 10px";
                            "Right" = "resize shrink width 10px";
                            "Up" = "resize shrink height 10px";
                            "Down" = "resize shrink height 10px";

                            "Shift+Left" = "resize grow width 10px";
                            "Shift+Right" = "resize grow width 10px";
                            "Shift+Up" = "resize grow height 10px";
                            "Shift+Down" = "resize grow height 10px";
                            "Escape" = "mode default";
                            "Return" = "mode default";
                        };
                    };

                    input = {
                        "type:pointer" = {
                            accel_profile = "flat";
                            pointer_accel = "0";
                        };

                        "type:keyboard" = {
                            xkb_layout = "us,ru";
                            xkb_options = "grp:caps_toggle";
                        };

                        "type:touchpad" = {
                            natural_scroll = "enabled";
                            tap = "enabled";
                        };
                    };
                };

                extraConfig = ''
                    bindswitch lid:on exec swaylock
                '';
            };
        };
    };
}
