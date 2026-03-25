{
  config,
  pkgs,
  lib,
  ...
}: {
  xdg = {
    portal = {
      enable = lib.mkIf config.home.gui.enable true;
      extraPortals = with pkgs; [
        xdg-desktop-portal-gtk
        xdg-desktop-portal-termfilechooser
      ];

      config = {
        common = {
          default = [
            "gtk"
          ];
        };

        hyprland = {
          default = [
            "gtk"
            "hyprland"
          ];

          "org.freedesktop.impl.portal.FileChooser" = [
            "termfilechooser"
          ];
        };
      };
    };
  };
}
