{
  pkgs,
  lib,
  ...
}: {
  programs = {
    zellij = {
      enable = true;

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

        default_shell = "${lib.getExe pkgs.nushell}";
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
