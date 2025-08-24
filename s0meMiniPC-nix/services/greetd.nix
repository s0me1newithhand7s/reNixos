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
                    command = "${lib.getExe pkgs.tuigreet} -r -t -c ${lib.getExe pkgs.fish}";
                    user = "greeter";
                };
            };
        };
    };
}
