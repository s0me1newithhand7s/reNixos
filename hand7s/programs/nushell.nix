{
  pkgs,
  lib,
  ...
}: {
  programs = {
    nushell = {
      enable = true;
      extraEnv = ''
        $env.EDITOR = "hx"
      '';

      extraConfig = ''
        $env.config.show_banner = false

        $env.config.buffer_editor = "hx"

        def fish-run [cmd: string] {
            ^${lib.getExe pkgs.fish} -c $cmd
        }
      '';
    };
  };
}
