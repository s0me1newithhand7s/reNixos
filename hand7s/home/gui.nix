{
  osConfig,
  config,
  lib,
  ...
}: {
  home = {
    gui = {
      enable =
        lib.mkIf (
          osConfig.networking.hostName == "ada" || osConfig.networking.hostName == "isla" || osConfig.networking.hostName == "wanda"
        )
        true;

      sessionType =
        lib.mkIf config.home.gui.enable
        "Hyprland";
    };
  };
}
