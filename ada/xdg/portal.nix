{pkgs, ...}: {
  xdg = {
    portal = {
      enable = true;

      config = {
        common = {
          "org.freedesktop.impl.portal.FileChooser" = "termfilechooser";

          default = [
            "gtk"
          ];
        };

        hyprland = {
          "org.freedesktop.impl.portal.FileChooser" = [
            "termfilechooser"
          ];

          preferred = [
            "gtk"
            "hyprland"
          ];
        };
      };

      extraPortals = with pkgs; [
        xdg-desktop-portal
        xdg-desktop-portal-gtk
        xdg-desktop-portal-hyprland
        xdg-desktop-portal-termfilechooser
      ];
    };
  };
}
