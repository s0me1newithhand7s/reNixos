{config, ...}: {
  environment = {
    variables = {
      HOSTNAME = config.networking.hostName;
      QT_QPA_PLATFORM = "wayland";
      SDL_VIDEODRIVER = "wayland";
      CLUTTER_BACKEND = "wayland";
      GDK_BACKEND = "wayland";
      NIXPKGS_ALLOW_UNFREE = "1";
      NIXPKGS_ALLOW_INSECURE = "1";
      NIXOS_OZONE_WL = "1";
      TERM = "xterm-256color";
    };
  };
}
