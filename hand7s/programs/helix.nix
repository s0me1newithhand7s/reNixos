{
    pkgs,
    lib,
    ...
}: {
    programs = {
        helix = {
            package = pkgs.helix_git;
            enable = true;
            defaultEditor = true;
            extraPackages = with pkgs; [
                nixd
            ];

            settings = {
                editor = {
                    line-number = "relative";
                    cursorline = true;
                    lsp = {
                        display-messages = true;
                    };
                };
            };

            languages = {
                language-servers = {
                    nixd = {
                        command = "${lib.getExe pkgs.nixd}";
                        args = [
                            "--inlay-hints=true"
                        ];
                    };
                };

                language = [
                    {
                        name = "nix";
                        comment-token = "#";
                        injection-regex = "nix";
                        indent = {
                            tab-width = 4;
                            unit = "  ";
                        };

                        formatter = {
                            command = "${lib.getExe pkgs.nix}";
                            args = [
                                "fmt"
                            ];
                        };

                        file-types = [
                            "nix"
                        ];

                        language-servers = [
                            "nixd"
                        ];
                    }
                ];
            };
        };
    };
}
