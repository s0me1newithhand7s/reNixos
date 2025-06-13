{pkgs,lib, ...}: {
    programs = {
        helix = {
            enable = true;
            package = pkgs.helix_git;
            defaultEditor = true;
            extraPackages = with pkgs; [
                nixd
                nixfmt-rfc-style
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
                            command = "${lib.getExe pkgs.nixfmt-rfc-style}";
                            args = [
                                "--indent=4"
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
