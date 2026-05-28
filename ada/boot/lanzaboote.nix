_: {
  boot = {
    lanzaboote = {
      enable = true;
      configurationLimit = 2;
      pkiBundle = "/var/lib/sbctl";
      settings = {
        timeout = 2;
        sortKey = "nixos";
      };
    };
  };
}
