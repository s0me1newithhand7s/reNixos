{
  pkgs,
  lib,
  ...
}: {
  programs = {
    uwsm = {
      enable = true;
      waylandCompositors = {
        "gamescope" = {
          prettyName = "Gamsescope";
          binPath = "${lib.getExe pkgs.gamescope}";
          extraArgs = [
            "-e"
          ];
        };

        "niri" = {
          prettyName = "Niri";
          binPath = "${lib.getExe pkgs.niri}";
          extraArgs = [
            "--session"
          ];
        };

        "hyprland" = {
          prettyName = "Hyprland";
          binPath = ''${lib.getExe' pkgs.hyprland "start-hyprland"}'';
        };
      };
    };
  };
}
