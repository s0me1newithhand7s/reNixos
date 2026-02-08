_: {
  security = {
    polkit = {
      enable = true;
      adminIdentities = [
        "unix-group:wheel"
      ];
    };
  };
}
