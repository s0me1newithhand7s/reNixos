{pkgs,lib, ...}: {
    programs = {
        yazi = {
            enable = true;
            enableFishIntegration = true;
            shellWrapperName = "yz";
            settings = {
                mgr = {
                    sort_by = "natural";
                    sort_sensitive = true;
                    sort_reverse = false;
                    sort_translit = true;

                    linemode = "size";

                    show_hidden = true;
                    show_symlink = true;
                };

                preview = {
                    tab_size = 4;
                    image_filter = "lanczos3";
                    image_quality = 90;
                };

                opener = {
                    play = [
                        {
                            run = "${lib.getExe pkgs.mpv} ''$@''";
                            block = true;
                            for = "unix";
                        }
                    ];

                    edit = [
                        {
                            run = "${lib.getExe pkgs.helix} ''$@''";
                            block = true;
                            for = "unix";
                        }
                    ];

                    open = [
                        {
                            run = "${lib.getExe' pkgs.xdg-utils "xdg-open"} ''$@''";
                            block = true;
                            for = "unix";
                        }
                    ];
                };

                input = {
                    cursor_blink = true;
                };

                plugins = with pkgs.yaziPlugins; {
                    starship = starship;
                    rsync = rsync;
                    git = git;
                    chmod = chmod;
                    full-border = full-border;
                };

                initLua = ''
                    require("full-border"):setup({ type = ui.Border.ROUNDED })
                    require("starship"):setup()
                    require("git"):setup()
                '';
            };
        };
    };
}
