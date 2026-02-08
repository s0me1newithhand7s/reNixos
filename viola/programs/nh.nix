{...}: {
  programs = {
    nh = {
      enable = true;
      clean = {
        enable = true;
        dates = "weekly";
        extraArgs = "--keep 2 --keep-since 2d";
      };
    };
  };
}
