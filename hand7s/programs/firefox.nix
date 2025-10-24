{
    inputs,
    pkgs,
    ...
}: let
    zen-browser = inputs.zen-browser.packages.${pkgs.system}.default;
in {
    programs = {
        firefox = {
            package = zen-browser;
            profiles = rec {
                default = {
                    userContent = "
                            --zen-colors-primary: #82aaff !important;
                            --zen-colors-secondary: #c099ff !important;
                            --zen-colors-tertiary: #1e2030 !important;
                            --zen-colors-border: #3b4261 !important;
                            --zen-dialog-background: #222436 !important;

                            .tab-background[selected=[selected=''] {
                                background-color: #6c598c !important;
                        }
                    ";
                };
            };
        };
    };
}
