{pkgs, ...}: {
    programs = {
        zed-editor = {
            enable = false;
            package = pkgs.zed-editor_git;
            installRemoteServer = true;
            userSettings = {
                vim_mode = true;
                features = {
                    copilot = false;
                };

                tab_bar = {
                    show = false;
                };

                telemetry = {
                    metrics = false;
                };
            };

            extensions = [
                "nix"
                "xy-zed"
            ];

            extraPackages = [
                pkgs.nixd
            ];
        };
    };
}
