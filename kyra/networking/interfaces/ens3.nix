{
  config,
  lib,
  ...
}: {
  networking = {
    interfaces = {
      ens3 = {
        ipv4 = {
          addresses = lib.optionals (config.networking.hostName == "mel") [
            {
              address = "45.11.229.254";
              prefixLength = 24;
            }
          ];
        };

        ipv6 = {
          addresses =
            lib.optionals (config.networking.hostName == "hazel") [
              {
                address = "2a03:6f01:1:2::cb1e";
                prefixLength = 64;
              }
            ]
            ++ lib.optionals (config.networking.hostName == "mel") [
              {
                address = "2a0e:97c0:3e3:2Oa::1";
                prefixLength = 64;
              }
            ];
        };
      };
    };
  };
}
