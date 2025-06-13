{
    pkgs,
    lib,
    ...
}: {
    systemd = {
        user = {
            services = {
                yambar = {
                    Unit = {
                        Description = "Yambar service.";
                        WantedBy = "graphical-session.target";
                    };

                    Service = {
                        ExecStart = "${lib.getExe pkgs.yambar}";
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
