_: {
  services = {
    firewalld = {
      enable = false;

      zones = {
        "eno1" = {
          interfaces = [
            "ens1"
          ];

          services = [
            "sunshine"
          ];
        };
      };
    };
  };
}
