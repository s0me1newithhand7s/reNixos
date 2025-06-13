{
    config,
    pkgs,
    lib,
    ...
}: {
    programs = {
        hyprpanel = {
            enable = lib.mkIf (
                config.home.gui.sessionType == "Hyprland"
            )
            true;

            hyprland = {
                enable = lib.mkIf (
                    config.home.gui.sessionType == "Hyprland"
                )
                true;
            };

            overwrite = {
                enable = lib.mkIf (
                    config.home.gui.sessionType == "Hyprland"
                )
                true;
            };

            overlay = {
                enable = lib.mkIf (
                    config.home.gui.sessionType == "Hyprland"
                )
                true;
            };

            settings = {
                layout = {
                    "bar.layouts" = {
                        "*" = {
                            left = [
                                "dashboard"
                                "workspaces"
                                "media"
                            ];

                            middle = [
                                "clock"
                                "power"
                            ];

                            right = [
                                "network"
                                "kbinput"
                                "volume"
                                "systray"
                                "notifications"
                            ];
                        };
                    };
                };

                scalingPriority = "hyprland";

                tear = false;
                terminal = "${lib.getExe pkgs.ghostty}";
                dummy = true;

                hyprpanel = {
                    restartAgs = true;
                    restartCommand = "${lib.getExe' pkgs.systemd "systemctl"} --user restart hyprpanel.service";
                };

                bar = {
                    autoHide = "never";
                    scrollSpeed = 5;

                    battery = {
                        hideLabelWhenFull = true;
                        label = true;
                    };

                    bluetooth = {
                        label = true;
                    };

                    clock = {
                        format = "%a, %b %d  %I:%M:%S %p";
                        icon = "󰸗";
                        showIcon = true;
                        showTime = true;
                    };

                    launcher = {
                        icon = " ";
                        autoDetectIcon = true;
                    };

                    media = {
                        format = "{artist: - }{title}";
                        show_active_only = true;
                        show_label = true;
                        truncation = true;
                        truncation_size = 30;
                    };

                    network = {
                        label = true;
                        showWifiInfo = true;
                        truncation = true;
                        truncation_size = 10;
                    };

                    notifications = {
                        show_total = false;
                        hideCountWhenZero = true;
                    };

                    volume = {
                        label = true;
                        scrollDown = "${lib.getExe' pkgs.wireplumber "wpctl"}  set-volume @DEFAULT_AUDIO_SINK@ 5%-";
                        scrollUp = "${lib.getExe' pkgs.wireplumber "wpctl"} set-volume @DEFAULT_AUDIO_SINK@ 5%+";
                        rightClick = "${lib.getExe' pkgs.wireplumber "wpctl"} set-mute @DEFAULT_AUDIO_SINK@ toggle";
                    };

                    windowtitle = {
                        icon = true;
                        label = true;
                        class_name = false;
                        custom_title = true;
                        truncation = true;
                        truncation_size = 50;
                    };

                    workspaces = {
                        show_icons = false;
                        show_numbered = false;
                        showApplicationIcons = true;
                        showAllActive = true;
                        showWsIcons = true;
                        numbered_active_indicator = "highlight";
                        workspaces = 20;
                        monitorSpecific = true;
                        reverse_scroll = false;
                        scroll_speed = 5;
                        spacing = 1.0;
                        workspaceMask = true;
                        ignored = "";

                        applicationIconEmptyWorkspace = "";
                        applicationIconFallback = "󰣆";

                        icons = {
                            active = "";
                            available = "";
                            occupied = "";
                        };
                    };

                    customModules = {
                        scrollSpeed = 5;

                        cava = {
                            showIcon = true;
                            icon = "";
                            spaceCharacter = " ";
                            showActiveOnly = true;
                            stereo = false;
                            autoSensitivity = true;

                            bars = 10;
                            channels = 2;
                            framerate = 165;
                            samplerate = 48000;
                            lowCutoff = 20;
                            highCutoff = 20000;

                            barCharacters = [
                                "▁"
                                "▂"
                                "▃"
                                "▄"
                                "▅"
                                "▆"
                                "▇"
                                "█"
                            ];
                        };

                        cpu = {
                            icon = "";
                            label = true;
                            round = true;
                            pollingInterval = 1000;
                        };

                        cpuTemp = {
                            icon = "";
                            label = true;
                            pollingInterval = 500;
                            round = true;
                            showUnit = true;
                            sensor = "";
                        };

                        hypridle = {
                            label = true;
                            pollingInterval = 500;

                            offIcon = "";
                            offLabel = "OFF";
                            onIcon = "";
                            onLabel = "ON";
                        };

                        hyprsunset = {
                            label = true;
                            pollingInterval = 500;

                            offIcon = "󰛨";
                            offLabel = "OFF";
                            onIcon = "󱩌";
                            onLabel = "ON";
                        };

                        kbLayout = {
                            icon = "󰌌";
                            label = true;
                            labelType = "code";
                            rightClick = "${lib.getExe' pkgs.hyprland "hyprctl"} switchxkblayout monsgeek-monsgeek-keyboard next";
                        };

                        netstat = {
                            icon = "󰖟";
                            label = true;
                            pollingInterval = 250;
                            dynamicIcon = true;
                            round = true;

                            rateUnit = "auto";
                            networkInLabel = "↓";
                            networkOutLabel = "↑";
                        };

                        power = {
                            icon = "";
                            showLabel = true;
                            leftClick = "menu:powerdropdown";
                        };

                        microphone = {
                            label = true;
                            mutedIcon = "";
                            unmutedIcon = "";

                            leftClick = "menu:audio";
                        };

                        ram = {
                            icon = "";
                            label = true;
                            labelType = "percentage";
                            pollingInterval = 250;
                            round = true;
                        };

                        storage = {
                            icon = "󰋊";
                            label = true;
                            labelType = "percentage";
                            pollingInterval = 2000;
                            round = false;
                        };

                        submap = {
                            label = true;
                            showSubmapName = true;
                            enabledIcon = "󰌐";
                            enabledText = "ON";
                            disabledIcon = "󰌌";
                            disabledText = "OFF";
                        };

                        updates = {
                            label = true;
                            autoHide = true;
                            padZero = true;
                            pollingInterval = 1440000;
                            updateCommand = "nix flake update --flake ~/Projects/flake";

                            icon = {
                                pending = "󰏗";
                                updated = "󰏖";
                            };
                        };

                        weather = {
                            label = true;
                            unit = "metric";
                        };
                    };
                };

                menus = {
                    transition = "crossfade";
                    transitionTime = 200;

                    clock = {
                        time = {
                            military = false;
                            hideSeconds = true;
                        };

                        weather = {
                            enabled = true;
                            location = "Yelabuga";
                            unit = "metric";
                            key = "ac3df6535cac4448a4c83337252702";
                        };
                    };

                    dashboard = {
                        shortcuts = {
                            left = {
                                shortcut1 = {
                                    command = "${lib.getExe pkgs.google-chrome}";
                                    icon = "";
                                    tooltip = "Google Chrome";
                                };

                                shortcut2 = {
                                    command = "spotify";
                                    icon = "";
                                    tooltip = "Spotify";
                                };

                                shortcut3 = {
                                    command = "${lib.getExe pkgs.discord}";
                                    icon = "";
                                    tooltip = "Discord";
                                };

                                shortcut4 = {
                                    command = "ayugram-desktop";
                                    icon = "";
                                    tooltip = "Telegram";
                                };
                            };

                            right = {
                                shortcut1 = {
                                    command = "${lib.getExe pkgs.fuzzel}";
                                    icon = "";
                                    tooltip = "Search";
                                };

                                shortcut3 = {
                                    command = "sleep 2; ${lib.getExe pkgs.grimblast} --notify --freeze copysave area /home/hand7s/Pictures/Screenshots/$(date '+%y%m%d_%H-%M-%s').png";
                                    icon = "󰄀";
                                    tooltip = "Screenshot";
                                };
                            };
                        };

                        stats = {
                            enable_gpu = false;
                            enabled = true;
                            interval = 1000;
                        };

                        directories = {
                            enabled = true;
                        };

                        powermenu = {
                            avatar = {
                                image = "/home/hand7s/Pictures/pfp.jpg";
                                name = "system";
                            };
                        };
                    };

                    media = {
                        displayTime = true;
                        displayTimeTooltip = true;
                        noMediaText = "-";
                        hideAlbum = false;
                        hideAuthor = false;
                    };

                    power = {
                        confirmation = true;
                        showLabel = true;
                        logout = "${lib.getExe' pkgs.hyprland "hyprctl"} dispatch exit";
                        reboot = "${lib.getExe' pkgs.systemd "systemctl"} reboot";
                        shutdown = "${lib.getExe' pkgs.systemd "systemctl"} poweroff";
                        sleep = "${lib.getExe' pkgs.systemd "systemctl"} suspend";
                    };

                    volume = {
                        raiseMaximumVolume = false;
                    };
                };

                notifications = {
                    active_monitor = true;
                    cache_actions = true;
                    clearDelay = 50;
                    displayedTotal = 5;
                    showActionsOnHover = true;
                    timeout = 5000;
                };

                theme = {
                    matugen = false;

                    matugen_settings = {
                        contrast = 0;
                        mode = "dark";
                        scheme_type = "monochrome";
                        variation = "standard_1";
                    };

                    font = {
                        name = "Hack Font Nerd Regular";
                        size = "16px";
                        weight = 600;
                    };

                    bar = {
                        transparent = false;
                        floating = true;
                        layer = "top";
                        location = "top";

                        margin_bottom = "0";
                        margin_sides = "20px";
                        margin_top = "20px";

                        border_radius = "10px";

                        border = {
                            location = "full";
                            width = "2px";
                        };

                        buttons = {
                            enableBorders = false;
                            monochrome = false;
                            style = "default";
                        };
                    };

                    osd = {
                        enable = true;
                        active_monitor = true;
                        duration = 2500;
                        location = "right";
                        margins = "5px 5px 5px 5px";
                        muted_zero = false;
                        radius = "10px";
                    };
                };

                wallpaper = {
                    enable = false;
                    pywal = false;
                    image = "";
                };
            };
        };
    };
}
