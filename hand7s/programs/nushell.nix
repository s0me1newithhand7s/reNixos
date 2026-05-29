{
  config,
  pkgs,
  lib,
  ...
}: {
  programs = {
    nushell = {
      enable = true;
      settings = {
        show_banner = false;
        edit_mode = "vi";
        cursor_shape = {
          vi_insert = "block";
          vi_normal = "underscore";
        };

        completions = {
          external = {
            enable = true;
            max_results = 200;
          };
        };
      };

      extraEnv = ''
        $env.EDITOR = "hx"
        $env.config.buffer_editor = "hx"

        $env.PROMPT_INDICATOR_VI_INSERT = {|| "" }
        $env.PROMPT_INDICATOR_VI_NORMAL = {|| "" }

        $env.CARAPACE_BRIDGES = "fish,inshellisense"
        $env.CARAPACE_MATCH = "2"
        $env.CARAPACE_LENIENT = "1"
        $env.CARAPACE_HIDDEN = "1"
      '';

      extraConfig = ''
        if $nu.is-interactive {
          ^${lib.getExe pkgs.microfetch}
        }

        def fish-run [cmd: string] {
            ^${lib.getExe config.programs.fish.package} -c $cmd
        }
      '';
    };
  };
}
