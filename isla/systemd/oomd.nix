{...}: {
  systemd = {
    oomd = {
      enable = true;
      enableUserSlices = true;
      enableSystemSlice = true;
      enableRootSlice = true;
    };
  };
}
