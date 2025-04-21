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
            ) true;

            events = [
                {
                    event = "lock";
                    command = "${pkgs.swaylock}/bin/swaylock";
                }

                {
                    event = "before-sleep";
                    command = "${pkgs.sway}/bin/swaymsg 'output * power off'";
                }

                {
                    event = "after-resume";
                    command = "${pkgs.sway}/bin/swaymsg 'output * power on'";
                }
            ];

            timeouts = [
                { 
                    timeout = 300; 
                    command = "${pkgs.brightnessctl}/bin/brightnessctl -s set 10";
                    resumeCommand = "${pkgs.brightnessctl}/bin/brightnessctl -r";
                }

                {
                    timeout = 600;
                    command = "${pkgs.swaylock}/bin/swaylock";
                }

                {
                    timeout = 900;
                    command = "${pkgs.systemd}/bin/systemctl suspend";
                }
            ];
        };
    };
}
