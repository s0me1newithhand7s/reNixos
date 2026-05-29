_: {
  programs = {
    fd = {
      enable = true;
      hidden = false;
      extraOptions = [
        "--no-ignore"
        "--absolute-path"
        "--show-errors"
      ];
    };
  };
}
