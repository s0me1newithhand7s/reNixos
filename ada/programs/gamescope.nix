{pkgs, ...}: {
  programs = {
    gamescope = {
      enable = true;
      package = pkgs.gamescope;
      args = [
        "-e"
      ];
    };
  };
}
