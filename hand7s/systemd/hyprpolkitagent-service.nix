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
                        After = "graphical-session.target";
                        PartOf = "graphical-session.target";
                    };

                    Service = {
                        Type = "simple";
                        ExecStart = "${lib.getExe pkgs.hyprpolkitagent}";
                        Restart = "always";
                        RestartSec = 1;
                        TimeoutStopSec = 10;
                    };

                    Install = {
                        WantedBy = [
                            "graphical-session.target"
                        ];
                    };
                };
            };
        };
    };
}
