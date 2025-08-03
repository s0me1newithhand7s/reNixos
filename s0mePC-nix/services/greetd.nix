{pkgs, ...}: {
    services = {
        greetd = {
            enable = true;
            restart = false;
            settings = {
                default_session = {
                    command = "${pkgs.greetd.tuigreet}/bin/tuigreet -r -t -c Hyprland --greet-align center";
                    user = "greeter";
                };
            };
        };
    };
}
