_: {
  services = {
    firewalld = {
      enable = true;

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
