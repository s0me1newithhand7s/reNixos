{
  config,
  lib,
  ...
}: {
  environment = {
    variables = {
      HOSTNAME = config.networking.hostName;
      QT_QPA_PLATFORMTHEME = lib.mkForce "xdgdesktopportal";
      TDESKTOP_USE_GTK_FILE_DIALOG = 1;
      SDL_VIDEODRIVER = "wayland";
      CLUTTER_BACKEND = "wayland";
      GDK_BACKEND = "wayland";
      NIXPKGS_ALLOW_UNFREE = 1;
      NIXPKGS_ALLOW_INSECURE = 1;
      NIXOS_OZONE_WL = 1;
      GRIMBLAST_HIDE_CURSOR = 1;
      TERM = "xterm-256color";
    };
  };
}
