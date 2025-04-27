{
    inputs,
    config,
    pkgs,
    lib,
    ...
}: {
    wayland = {
        windowManager = {
            hyprland = {
                enable = lib.mkIf (
                    config.home.gui.sessionType == "Hyprland"
                )
                true;

                settings = {
                    monitor = ", 2560x1440@165.00Hz, 0x0, 1";

                    general = {
                        gaps_in = "5";
                        gaps_out = "20";
                        border_size = "2";
                        layout = "dwindle";

                        snap = {
                            enabled = true;
                            window_gap = "5";
                            monitor_gap = "5";
                            border_overlap = false;
                        };
                    };

                    input = {
                        kb_layout = "us, ru";
                        kb_options = "grp:caps_toggle";

                        numlock_by_default = true;
                        follow_mouse = "1";
                        left_handed = true;
                        sensitivity = "0";

                        special_fallthrough = true;
                        focus_on_close = 1;

                        touchpad = {
                            disable_while_typing = true;
                            tap-to-click = true;
                        };

                        tablet = {
                            output = "current";
                            left_handed = true;
                        };
                    };

                    gestures = {
                        workspace_swipe = true;
                        workspace_swipe_fingers = true;
                        workspace_swipe_distance = 400;
                    };

                    group = {
                        auto_group = true;
                        insert_after_current = true;
                        focus_removed_window = true;
                        drag_into_group = "2";
                        merge_groups_on_drag = true;
                        merge_groups_on_groupbar = true;
                        group_on_movetoworkspace = true;

                        groupbar = {
                            enabled = true;
                        };
                    };

                    decoration = {
                        active_opacity = "0.85";
                        inactive_opacity = "0.65";
                        fullscreen_opacity = "1.0";
                        rounding = "10";

                        dim_inactive = true;
                        dim_strength = "0.15";
                        dim_special = "0.0";
                        dim_around = "0.05";

                        shadow = {
                            enabled = true;
                            render_power = "4";
                            range = "4";
                            ignore_window = false;
                        };

                        blur = {
                            enabled = true;
                            size = "10";
                            passes = "5";
                        };
                    };

                    exec-once = [
                        "${pkgs.systemd}/bin/systemctl --user start hyprpaper.service"
                        "${pkgs.systemd}/bin/systemctl --user start hypridle.service"
                        "${pkgs.systemd}/bin/systemctl --user start hyprpolkitagent.service"
                        "${pkgs.systemd}/bin/systemctl --user start hyprpanel.service"
                    ];

                    bind = [
                        "ALT, return, exec, ${pkgs.ghostty}/bin/ghostty"
                        "ALT, Q, killactive,"
                        "ALT, S, exec, ${pkgs.fuzzel}/bin/fuzzel"
                        "ALT, F, fullscreen, 0"
                        "ALT, L, exec, ${pkgs.hyprlock}/bin/hyprlock"

                        "ALT SHIFT, E, exit,"
                        "ALT SHIFT, space, togglefloating, active"
                        "ALT SHIFT, S, exec, ${pkgs.grimblast}/bin/grimblast --notify --freeze copysave area /home/hand7s/Pictures/Screenshots/$(date '+%y%m%d_%H-%M-%s').png"

                        "ALT, left, movefocus, l"
                        "ALT, right, movefocus, r"
                        "ALT, up, movefocus, u"
                        "ALT, down, movefocus, d"

                        "ALT, 1, workspace, 1"
                        "ALT, 2, workspace, 2"
                        "ALT, 3, workspace, 3"
                        "ALT, 4, workspace, 4"
                        "ALT, 5, workspace, 5"
                        "ALT, 6, workspace, 6"
                        "ALT, 7, workspace, 7"
                        "ALT, 8, workspace, 8"
                        "ALT, 9, workspace, 9"
                        "ALT, 0, workspace, 0"
                        "ALT, H, togglespecialworkspace, special"

                        "ALT SHIFT, 1, movetoworkspace, 1"
                        "ALT SHIFT, 2, movetoworkspace, 2"
                        "ALT SHIFT, 3, movetoworkspace, 3"
                        "ALT SHIFT, 4, movetoworkspace, 4"
                        "ALT SHIFT, 5, movetoworkspace, 5"
                        "ALT SHIFT, 6, movetoworkspace, 6"
                        "ALT SHIFT, 7, movetoworkspace, 7"
                        "ALT SHIFT, 8, movetoworkspace, 8"
                        "ALT SHIFT, 9, movetoworkspace, 9"
                        "ALT SHIFT, 0, movetoworkspace, 0"
                        "ALT SHIFT, H, movetoworkspace, special"

                        "ALT, mouse_down, workspace, e+1"
                        "ALT, mouse_up, workspace, e-1"
                    ];

                    bindel = [
                        ", XF86AudioRaiseVolume, exec, ${pkgs.wireplumber}/bin/wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+"
                        ", XF86AudioLowerVolume, exec, ${pkgs.wireplumber}/bin/wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"

                        ", XF86MonBrightnessDown, exec, ${pkgs.brightnessctl}/bin/brightnessctl set 5%-"
                        ", XF86MonBrightnessUp, exec, ${pkgs.brightnessctl}/bin/brightnessctl set +5%"
                    ];

                    bindl = [
                        ", XF86AudioPlay, exec, ${pkgs.playerctl}/bin/playerctl play-pause"
                        ", XF86AudioPrev, exec, ${pkgs.playerctl}/bin/playerctl previous"
                        ", XF86AudioNext, exec, ${pkgs.playerctl}/bin/playerctl next"
                        ", XF86AudioMute, exec, ${pkgs.wireplumber}/bin/wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"

                        "ALT, TAB, hyprexpo:expo, toggle"
                    ];

                    bindm = [
                        "ALT, mouse:272, movewindow"
                        "ALT, mouse:273, resizewindow"
                    ];

                    animation = [
                        "enabled = true"

                        "bezier = bez, 0.05, 0.9, 0.1, 1.05"

                        "animation = windows, 1, 7, bez"
                        "animation = windowsOut, 1, 7, default, popin 80%"
                        "animation = border, 1, 10, default"
                        "animation = borderangle, 1, 10, default"
                        "animation = fade, 1, 7, default"
                        "animation = workspaces, 1, 7, default"
                    ];

                    misc = {
                        disable_hyprland_logo = true;
                        disable_splash_rendering = true;
                        middle_click_paste = false;
                        animate_manual_resizes = true;
                        animate_mouse_windowdragging = true;
                        focus_on_activate = true;
                        close_special_on_empty = true;
                        initial_workspace_tracking = "2";
                    };

                    binds = {
                        workspace_back_and_forth = true;
                        allow_workspace_cycles = true;
                        workspace_center_on = true;
                    };

                    xwayland = {
                        enabled = true;
                        use_nearest_neighbor = true;
                        force_zero_scaling = false;
                    };

                    ecosystem = {
                        no_update_news = true;
                        no_donation_nag = true;
                    };

                    debug = {
                        suppress_errors = true;
                    };

                    plugin = {
                        hyprexpo = {
                            columns = 3;
                            gap_size = 5;

                            enable_gesture = true;
                            gesture_fingers = 3;
                            gesture_distance = 300;
                            gesture_positive = false;
                        };
                    };
                };

                plugins = with inputs; [
                    # inputs.hyprland-plugins.packages.${pkgs.system}.hyprexpo
                ];
            };
        };
    };
}
