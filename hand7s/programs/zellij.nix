{
    pkgs,
    lib,
    ...
}: {
    programs = {
        zellij = {
            enable = true;
            settings = {
                default_shell = "${lib.getExe pkgs.fish}";
                show_startup_tips = false;
                show_release_notes = false;
                simplified_ui = true;

                ui = {
                    pane_frames = {
                        rounded_corners = true;
                        hide_session_name = false;
                    };
                };
            };
        };
    };
}
