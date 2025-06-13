{
    pkgs,
    lib,
    ...
}: {
    systemd = {
        user = {
            services = {
                hyprpolkitagent = {
                    Unit = {
                        Description = "Hyprpolkitagent service.";
                        WantedBy = "graphical-session.target";
                    };

                    Service = {
                        ExecStart = "${lib.getExe pkgs.hyprpolkitagent}";
                        Restart = "always";
                        RestartSec = 10;
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
