{pkgs, ...}: {
    systemd = {
        user = {
            services = {
                yambar = {
                    Unit = {
                        Description = "Yambar service.";
                        WantedBy = "graphical-session.target";
                    };

                    Service = {
                        ExecStart = "${pkgs.yambar}/bin/yambar";
                        Restart = "always";
                        RestartSec = 1;
                    };

                    Install = {
                        After = "graphical-session.target";
                        ConditionEnvironment = "WAYLAND_DISPLAY";
                        PartOf = "graphical-session.target";
                    };
                };
            };
        };
    };
}
