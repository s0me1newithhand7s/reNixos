{lib,config,...}: {
    programs = if (config.home.gui.sessionType == "Hyprland") then {
        noctalia-shell = {
            enable = true;
            settings = {
                bar = {
                    density = "compact";
                    position = "right";
                    showCapsule = false;

                    widgets = {
                        left = [
                            {
                                id = "SidePanelToggle";
                                useDistroLogo = true;
                            }

                            {
                                id = "Workspace";
                            }

                            {
                                id = "MediaMini";
                            }
                        ];

                        center = [
                            {
                                formatHorizontal = "HH:mm";
                                formatVertical = "HH mm";
                                id = "Clock";
                                useMonospacedFont = true;
                                usePrimaryColor = true;
                            }
                        ];

                        right = [
                            {
                                id = "Volume";
                            }

                            {
                                id = "Tray";
                            }

                            {
                                id = "NotificationHistory";
                            }
                        ];
                    };
                };
            };
        };
    } else {};
}