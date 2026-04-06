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
          image_filter = "lanczos3";
          image_quality = 90;
        };

        opener = {
          "play" = [
            {
              run = ''${lib.getExe pkgs.mpv} --vo=tct "%s"'';
              block = true;
              for = "unix";
            }
          ];

          "view" = [
            {
              run = ''${lib.getExe pkgs.viu} -t "%s"'';
              block = true;
              for = "unix";
            }
          ];

          "edit" = [
            {
              run = ''${lib.getExe pkgs.helix} "%s"'';
              block = true;
              for = "unix";
            }
          ];

          "doc" = [
            {
              run = ''${lib.getExe pkgs.tdf} "%s"'';
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
              run = ''${lib.getExe pkgs.ouch} d "%s"'';
              block = true;
              for = "unix";
            }
          ];

          "book" = [
            {
              run = ''${lib.getExe pkgs.epr} "%s"'';
              block = true;
              for = "unix";
            }
          ];

          "open" = [
            {
              run = ''${lib.getExe' pkgs.xdg-utils "xdg-open"} "%s"'';
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
                "edit"
                "open"
              ];
            }
          ];
        };

        input = {
          cursor_blink = true;
        };

        plugin = {
          prepend_fetchers = [
            {
              id = "git";
              name = "*";
              run = "git";
            }

            {
              id = "git";
              name = "*/";
              run = "git";
            }
          ];
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
