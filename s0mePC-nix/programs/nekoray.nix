{...}: {
  programs = {
    nekoray = {
      enable = true;
      tunMode = {
        enable = true;
        setuid = true;
      };
    };
  };
}
