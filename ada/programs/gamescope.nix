{pkgs, ...}: {
  programs = {
    gamescope = {
      enable = true;
      package = pkgs.gamescope;
      args = [
        "-e"

        "-W 2560"
        "-H 1440"

        "-r 165"
        "-o 15"
        "--adaptive-sync"

        "--backend sdl"
        "--expose-wayland"
        "--xwayland-count 2"

        "--force-grab-cursor"
      ];
    };
  };
}
