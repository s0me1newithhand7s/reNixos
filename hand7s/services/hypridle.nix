{
    config,
    pkgs,
    lib,
    ...
}: {
    services = {
        hypridle = {
            enable = lib.mkIf (
                config.home.gui.sessionType == "Hyprland"
            )
            true;

            settings = {
                general = {
                    before_sleep_cmd = "${lib.getExe' pkgs.hyprland "hyprctl"} dispatch dpms off";
                    after_sleep_cmd = "${lib.getExe' pkgs.hyprland "hyprctl"} dispatch dpms on";
                };

                listener = [
                    {
                        timeout = 300;
                        on-timeout = "${lib.getExe pkgs.brightnessctl} -s set 10";
                        on-resume = "${lib.getExe pkgs.brightnessctl} -r";
                    }

                    {
                        timeout = 600;
                        on-timeout = "${lib.getExe pkgs.hyprlock}";
                    }

                    {
                        timeout = 900;
                        on-timeout = "${lib.getExe' pkgs.systemd "systemctl"} suspend";
                    }
                ];
            };
        };
    };
}
