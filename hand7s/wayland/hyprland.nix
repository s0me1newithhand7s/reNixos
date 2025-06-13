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
                        left_handed = false;
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
                        "${lib.getExe' pkgs.systemd "systemctl"} --user start hyprpaper.service"
                        "${lib.getExe' pkgs.systemd "systemctl"} --user start hypridle.service"
                        "${lib.getExe' pkgs.systemd "systemctl"} --user start hyprpolkitagent.service"
                        "${lib.getExe' pkgs.systemd "systemctl"} --user start hyprpanel.service"
                    ];

                    bind = [
                        "ALT, return, exec, ${lib.getExe pkgs.ghostty}"
                        "ALT, Q, killactive,"
                        "ALT SHIFT, Q, closeunfocused,"
                        "ALT, S, exec, ${lib.getExe pkgs.fuzzel}"
                        "ALT, F, fullscreen, 0"
                        "ALT, L, exec, ${lib.getExe pkgs.hyprlock}"

                        "ALT SHIFT, E, exit,"
                        "ALT SHIFT, space, togglefloating, active"
                        "ALT SHIFT, S, exec, ${lib.getExe pkgs.grimblast} --notify --freeze copysave area /home/hand7s/Pictures/Screenshots/$(date '+%y%m%d_%H-%M-%s').png"

                        "ALT, left, movefocus, l"
                        "ALT, right, movefocus, r"
                        "ALT, up, movefocus, u"
                        "ALT, down, movefocus, d"

                        "ALT, 1, split-workspace, 1"
                        "ALT, 2, split-workspace, 2"
                        "ALT, 3, split-workspace, 3"
                        "ALT, 4, split-workspace, 4"
                        "ALT, 5, split-workspace, 5"
                        "ALT, 6, split-workspace, 6"
                        "ALT, 7, split-workspace, 7"
                        "ALT, 8, split-workspace, 8"
                        "ALT, 9, split-workspace, 9"
                        "ALT, 0, split-workspace, 10"
                        "ALT, H, togglespecialworkspace, special"

                        "ALT SHIFT, 1, split-movetoworkspace, 1"
                        "ALT SHIFT, 2, split-movetoworkspace, 2"
                        "ALT SHIFT, 3, split-movetoworkspace, 3"
                        "ALT SHIFT, 4, split-movetoworkspace, 4"
                        "ALT SHIFT, 5, split-movetoworkspace, 5"
                        "ALT SHIFT, 6, split-movetoworkspace, 6"
                        "ALT SHIFT, 7, split-movetoworkspace, 7"
                        "ALT SHIFT, 8, split-movetoworkspace, 8"
                        "ALT SHIFT, 9, split-movetoworkspace, 9"
                        "ALT SHIFT, 0, split-movetoworkspace, 10"
                        "ALT SHIFT, H, split-movetoworkspace, special"

                        "ALT, mouse_down, workspace, e+1"
                        "ALT, mouse_up, workspace, e-1"

                        "ALT, TAB, overview:toggle"
                    ];

                    bindel = [
                        ", XF86AudioRaiseVolume, exec, ${lib.getExe' pkgs.wireplumber "wpctl"} set-volume @DEFAULT_AUDIO_SINK@ 5%+"
                        ", XF86AudioLowerVolume, exec, ${lib.getExe' pkgs.wireplumber "wpctl"} set-volume @DEFAULT_AUDIO_SINK@ 5%-"

                        ", XF86MonBrightnessDown, exec, ${lib.getExe pkgs.brightnessctl} set 5%-"
                        ", XF86MonBrightnessUp, exec, ${lib.getExe pkgs.brightnessctl} set +5%"
                    ];

                    bindl = [
                        ", XF86AudioPlay, exec, ${lib.getExe pkgs.playerctl} play-pause"
                        ", XF86AudioPrev, exec, ${lib.getExe pkgs.playerctl} previous"
                        ", XF86AudioNext, exec, ${lib.getExe pkgs.playerctl} next"
                        ", XF86AudioMute, exec, ${lib.getExe' pkgs.wireplumber "wpctl"} set-mute @DEFAULT_AUDIO_SINK@ toggle"
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
                        split-monitor-workspaces = {
                            count = 10;
                            keep_focused = 1;
                            enable_notifications = 1;
                            enable_persistent_workspaces = 1;
                        };

                        easymotion = {
                            only_special = false;
                        };

                        dynamic-cursors = {
                            enabled = true;
                            mode = "strech";
                            threshold = 2;
                            stretch = {
                                limit = 4000;
                                function = "quadratic";
                            };

                            shake = {
                                enabled = true;
                                nearest = true;
                                threshold = 10.0;
                                effects = true;
                            };

                            hyprcursor = {
                                enabled = true;
                                nearest = true;
                                fallback = "clientside";
                            };
                        };

                        touch_gestures = {
                            sensitivity = 0.0;
                            workspace_swipe_fingers = 4;
                            long_press_delay = 400;
                            resize_on_border_long_press = true;
                            edge_margin = 10;
                            emulate_touchpad_swipe = false;
                        };
                    };
                };

                plugins = with inputs; [
                    hyprsplit.packages.${pkgs.system}.split-monitor-workspaces
                    hyprcurs.packages.${pkgs.system}.hypr-dynamic-cursors
                    hypremot.packages.${pkgs.system}.hyprland-easymotion
                    hyprplugs.packages.${pkgs.system}.xtra-dispatchers
                    hyprplugs.packages.${pkgs.system}.hyprwinwrap
                    hyprspace.packages.${pkgs.system}.Hyprspace
                    hyprgrass.packages.${pkgs.system}.hyprgrass
                ];
            };
        };
    };
}
