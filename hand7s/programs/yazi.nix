{
  pkgs,
  lib,
  ...
}: {
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
          play = [
            {
              run = "${lib.getExe pkgs.mpv} ''$@''";
              block = true;
              for = "unix";
            }
          ];

          view = [
            {
              run = "${lib.getExe pkgs.timg} ''-p k -C $@ | ${lib.getExe' pkgs.uutils-coreutils-noprefix "more"}''";
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
              orphan = true;
              for = "unix";
            }
          ];
        };

        open = {
          rules = [
            {
              mime = "image/*";
              use = "view";
            }

            {
              mime = "text/*";
              use = "edit";
            }

            {
              mime = "audio/*";
              use = "play";
            }

            {
              mime = "video/*";
              use = "play";
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
