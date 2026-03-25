{
  lib,
  pkgs,
  ...
}: {
  xdg = {
    configFile = {
      "xdg-desktop-portal-termfilechooser/config" = {
        enable = true;
        force = true;
        text = ''
          [filechooser]
          cmd="${pkgs.xdg-desktop-portal-termfilechooser}/share/xdg-desktop-portal-termfilechooser/yazi-wrapper.sh"
          default_dir=$HOME
          env=TERMCMD="${lib.getExe pkgs.ghostty} --title='yazi-picker' -e"
          open_mode=suggested
          save_mode=last
        '';
      };
    };
  };
}
