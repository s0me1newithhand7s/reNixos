_: {
  programs = {
    nh = {
      enable = true;
      clean = {
        enable = true;
        dates = "daily";
        extraArgs = [
          "-k 2"
          "-K 1d"
        ];
      };
    };
  };
}
