{pkgs, ...}: {
    services = {
        greetd = {
            enable = true;
            restart = false;
            settings = {
                default_session = {
                    command = "${pkgs.greetd.tuigreet}/bin/tuigreet -r -t -c sway --greet-align center";
                    user = "greeter";
                };
            };
        };
    };
}
