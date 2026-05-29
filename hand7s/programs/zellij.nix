{
  config,
  lib,
  ...
}: {
  programs = {
    zellij = {
      enable = true;

      layouts = {
        "workspace" = {
          layout = {
            default_tab_template = {
              children = [
                {
                  pane = {
                    size = 1;
                    plugin = {
                      location = "zellij:tab-bar";
                    };
                  };
                }

                {"children" = {};}

                {
                  pane = {
                    size = 2;
                    plugin = {
                      location = "zellij:tab-bar";
                    };
                  };
                }
              ];
            };

            tab = {
              name = "workspace";
              focus = true;
              pane = {
                split_direction = "vertical";
                children = [
                  {
                    pane = {
                      size = "30%";
                      split_direction = "horizontal";
                      children = [
                        {
                          command = "${lib.getExe config.programs.gitui.package}";
                          size = "50%";
                        }

                        {
                          focus = true;
                          size = "50%";
                        }
                      ];
                    };
                  }

                  {
                    command = "${lib.getExe' config.programs.yazi.package "yz"}";
                    size = "70%";
                  }
                ];
              };
            };
          };
        };
      };

      settings = {
        options = {
          copy_on_select = false;
        };

        keybinds = {
          unbind = [
            "Alt n"
            "Alt i"
            "Alt o"
            "Alt h"
            "Alt j"
            "Alt k"
            "Alt l"
            "Alt f"
            "Alt Up"
            "Alt Down"
            "Alt Right"
            "Alt Left"
            "Alt +"
            "Alt -"
          ];
        };

        default_shell = "${lib.getExe config.programs.nushell.package}";
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
