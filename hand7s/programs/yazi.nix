{
  pkgs,
  lib,
  ...
}: {
  programs = {
    yazi = {
      enable = true;
      enableFishIntegration = true;
      enableNushellIntegration = true;
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

          prepend_keymap = [
            {
              on = "R";
              run = "plugin rsync";
              desc = "Copy files using rsync";
            }

            {
              on = "c, m";
              run = "plugin chmod";
              desc = "Chmod on selected files";
            }
          ];
        };

        preview = {
          tab_size = 4;
          image_filter = "catmull-rom";
          image_quality = 75;
        };

        opener = {
          "play" = [
            {
              run = ''mpv --vo=tct "$@"'';
              block = true;
              for = "unix";
            }
          ];

          "view" = [
            {
              run = ''${lib.getExe pkgs.viu} -t "$@"'';
              block = true;
              for = "unix";
            }
          ];

          "edit" = [
            {
              run = ''hx "$@"'';
              block = true;
              for = "unix";
            }
          ];

          "doc" = [
            {
              run = ''${lib.getExe pkgs.tdf} "$@"'';
              block = true;
              for = "unix";
            }
          ];

          "hex" = [
            {
              run = ''${lib.getExe pkgs.hexyl} "$s"'';
            }
          ];

          "exfil" = [
            {
              run = ''${lib.getExe pkgs.ouch} d "$@"'';
              block = true;
              for = "unix";
            }
          ];

          "book" = [
            {
              run = ''${lib.getExe pkgs.epr} "$@"'';
              block = true;
              for = "unix";
            }
          ];

          "dir" = [
            {
              run = ''${lib.getExe pkgs.broot} "$@"'';
              block = true;
              for = "unix";
            }
          ];

          "open" = [
            {
              run = ''${lib.getExe' pkgs.xdg-utils "xdg-open"} "$@"'';
              orphan = true;
              for = "unix";
            }
          ];
        };

        open = {
          rules = [
            {
              mime = "video/*";
              use = [
                "play"
                "open"
              ];
            }

            {
              mime = "audio/*";
              use = [
                "play"
                "open"
              ];
            }

            {
              mime = "application/epub+zip";
              use = [
                "book"
                "edit"
              ];
            }

            {
              mime = "application/pdf";
              use = [
                "doc"
                "open"
              ];
            }

            {
              mime = "application/{octet-stream,x-executable,x-sharedlib,x-pie-executable}";
              use = [
                "hex"
                "open"
              ];
            }

            {
              mime = "application/vnd.*";
              use = [
                "open"
                "edit"
              ];
            }

            {
              mime = "font/*";
              use = [
                "open"
                "edit"
              ];
            }

            {
              mime = "application/{zip,rar,7z*,tar*,x-tar,x-bzip*,x-gzip,x-xz}";
              use = [
                "exfil"
                "open"
              ];
            }

            {
              mime = "text/*";
              use = [
                "edit"
                "open"
              ];
            }

            {
              mime = "*";
              use = [
                "dir"
                "open"
              ];
            }
          ];
        };

        input = {
          cursor_blink = true;
        };
      };

      plugins = {
        inherit
          (pkgs.yaziPlugins)
          starship
          rsync
          git
          chmod
          full-border
          ;
      };

      initLua = ''
        require("full-border"):setup({ type = ui.Border.ROUNDED })
        require("starship"):setup()
        require("git"):setup()
      '';
    };
  };
}
