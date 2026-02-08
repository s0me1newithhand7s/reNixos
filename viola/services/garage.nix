{pkgs, ...}: {
  services = {
    garage = {
      enable = true;
      package = pkgs.garage;
      logLevel = "error";
      settings = {
        # nope
      };
    };
  };
}
