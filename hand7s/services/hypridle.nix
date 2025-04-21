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
            ) true;
            
            settings = {
                general = {
                    before_sleep_cmd = "${pkgs.hyprland}/bin/hyprctl dispatch dpms off";
                    after_sleep_cmd = "${pkgs.hyprland}/bin/hyprctl dispatch dpms on";
                };

                listener = [
                    {
                        timeout = 300;
                        on-timeout = "${pkgs.brightnessctl}/bin/brightnessctl -s set 10";
                        on-resume = "${pkgs.brightnessctl}/bin/brightnessctl -r";
                    }

                    {
                        timeout = 600;
                        on-timeout = "${pkgs.hyprlock}/bin/hyprlock";
                    }

                    {
                        timeout = 900;
                        on-timeout = "${pkgs.systemd}/bin/systemctl suspend";
                    }
                ];
            };
        };
    };
}
