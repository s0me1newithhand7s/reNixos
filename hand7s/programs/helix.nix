{
  pkgs,
  lib,
  ...
}: let
  formatter = {
    run = "treefmt";
    args = [
      "--stdin"
      "$f"
    ];
  };
in {
  programs = {
    helix = {
      package = pkgs.helix;
      enable = true;
      defaultEditor = true;
      extraPackages = with pkgs; [
        nixd
        ruff
        vtsls
        rust-analyzer
      ];

      settings = {
        editor = {
          line-number = "relative";
          cursorline = true;
          auto-pairs = true;
          auto-save = {
            focus-lost = true;
            after-delay = {
              enable = true;
              timeout = 3000;
            };
          };

          soft-wrap = {
            enable = true;
          };

          inline-diagnostics = {
            cursor-line = "hint";
          };

          lsp = {
            enable = true;
            display-progress-messages = true;
            display-inlay-hints = true;
          };

          cursor-shape = {
            normal = "underline";
            insert = "block";
            select = "underline";
          };
        };
      };

      languages = {
        language-servers = {
          "nixd" = {
            command = "${lib.getExe pkgs.nixd}";
            args = [
              "--inlay-hints=true"
            ];
          };

          "ruff" = {
            command = "${lib.getExe pkgs.ruff}";
            args = [
              "server"
            ];
          };

          "vtsls" = {
            command = "${lib.getExe pkgs.vtsls}";
            args = [
              "--stdio"
            ];
          };

          "rust-lsp" = {
            command = "${lib.getExe pkgs.rust-analyzer}";
          };
        };

        languages = [
          {
            name = "nix";
            auto-format = true;
            language-servers = [
              "nixd"
            ];

            inherit
              formatter
              ;
          }

          {
            name = "python";
            auto-format = true;
            language-servers = [
              "ruff"
            ];

            inherit
              formatter
              ;
          }

          {
            name = "rust";
            auto-format = true;
            language-servers = [
              "rust-lsp"
            ];

            inherit
              formatter
              ;
          }

          {
            name = "javascript";
            auto-format = true;
            language-servers = [
              "vtsls"
            ];

            inherit
              formatter
              ;
          }

          {
            name = "typescript";
            auto-format = true;
            language-servers = [
              "vtsls"
            ];

            inherit
              formatter
              ;
          }
        ];
      };
    };
  };
}
