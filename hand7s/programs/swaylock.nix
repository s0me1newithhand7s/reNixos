{
    config,
    lib,
    ...
}: {
    programs = {
        swaylock = {
            enable = lib.mkIf (
                config.home.gui.sessionType == "Sway"
            ) true;

            settings = {
                show-failed-attempts = true;
            };
        };
    };
}
