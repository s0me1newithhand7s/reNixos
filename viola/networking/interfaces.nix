_: {
  networking = {
    firewall = {
      interfaces = {
        wt0 = {
          allowedUDPPorts = [
            25
            6969
            8080
            8443
            8980
            53350
            53351
            53352
          ];

          allowedTCPPorts = [
            25
            6969
            8080
            8443
            8980
            53350
            53351
            53352
          ];
        };
      };
    };
  };
}
