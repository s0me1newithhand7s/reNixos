{
  name,
  lib,
  ...
}: {
  systemd = {
    network = {
      enable = true;
      networks = lib.mkMerge [
        (
          lib.mkIf (
            name == "mel"
          )
          {
            "10-eth0" = {
              matchConfig.Name = "eth0";
              networkConfig = {
                IPv6AcceptRA = false;
                Address = [
                  "45.11.229.245/24"
                  "2a0e:97c0:3e3:20a::1/64"
                ];
              };

              routes = [
                {
                  routeConfig = {
                    Gateway = "45.11.229.1";
                  };
                }

                {
                  routeConfig = {
                    Gateway = "fe80::1";
                    GatewayOnLink = true;
                  };
                }
              ];
            };
          }
        )

        (
          lib.mkIf (
            name == "yara"
          )
          {
            "10-ens3" = {
              matchConfig = {
                Name = "ens3";
              };

              networkConfig = {
                IPv6AcceptRA = false;
                Address = [
                  "138.124.240.75/32"
                  "2a0d:d940:1a:1500::2/56"
                ];
              };

              routes = [
                {
                  routeConfig = {
                    Gateway = "10.0.0.1";
                    GatewayOnLink = true;
                  };
                }

                {
                  routeConfig = {
                    Gateway = "2a0d:d940:1a:1500::1";
                    GatewayOnLink = true;
                  };
                }
              ];
            };
          }
        )

        (
          lib.mkIf (
            name == "hazel"
          )
          {
            "10-ens3" = {
              matchConfig = {
                Name = "ens3";
              };

              networkConfig = {
                Address = "90.156.226.152/24";
                Gateway = "90.156.226.1";
                IPv6AcceptRA = false;
              };
            };
          }
        )

        (
          lib.mkIf (
            name == "lynn"
          )
          {
            "10-ens3" = {
              matchConfig = {
                Name = "ens3";
              };

              networkConfig = {
                Address = "138.124.72.244/24";
                Gateway = "138.124.72.1";
                IPv6AcceptRA = false;
              };
            };
          }
        )
      ];
    };
  };
}
