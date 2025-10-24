{
    pkgs,
    lib,
    ...
}: {
    services = {
        greetd = {
            enable = true;
            restart = false;
            settings = {
                default_session = {
                    command = "${lib.getExe pkgs.tuigreet} -r -t -c ${lib.getExe pkgs.hyprland} --greet-align center";
                    user = "greeter";
                };
            };
        };
    };
}
