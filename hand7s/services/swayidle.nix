{
    config,
    pkgs,
    lib,
    ...
}: {
    services = {
        swayidle = {
            enable = lib.mkIf (
                config.home.gui.sessionType == "Sway"
            )
            true;

            events = [
                {
                    event = "lock";
                    command = "${lib.getExe pkgs.swaylock}";
                }

                {
                    event = "before-sleep";
                    command = "${lib.getExe' pkgs.sway "swaymsg"} 'output * power off'";
                }

                {
                    event = "after-resume";
                    command = "${lib.getExe' pkgs.sway "swaymsg"} 'output * power on'";
                }
            ];

            timeouts = [
                {
                    timeout = 300;
                    command = "${lib.getExe pkgs.brightnessctl} -s set 10";
                    resumeCommand = "${lib.getExe pkgs.brightnessctl} -r";
                }

                {
                    timeout = 600;
                    command = "${lib.getExe pkgs.swaylock}";
                }

                {
                    timeout = 900;
                    command = "${lib.getExe' pkgs.systemd "systemctl"} suspend";
                }
            ];
        };
    };
}
