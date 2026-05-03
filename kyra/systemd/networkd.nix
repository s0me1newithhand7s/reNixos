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
            name == "ivy"
          )
          {
            "10-ens3" = {
              matchConfig = {
                Name = "ens3";
              };

              addresses = [
                {
                  Address = "93.115.203.92/24";
                }

                {
                  Address = "2001:67c:263c::8fa/64";
                }
              ];

              routes = [
                {
                  Gateway = "93.115.203.1";
                }

                {
                  Gateway = "2001:67c:263c::1";
                }
              ];
            };
          }
        )

        (
          lib.mkIf (
            name == "mel"
          )
          {
            "10-eth0" = {
              matchConfig = {
                Name = "eth0";
              };

              addresses = [
                {
                  Address = "45.11.229.245/24";
                }

                {
                  Address = "2a0e:97c0:3e3:20a::1/64";
                }
              ];

              networkConfig = {
                IPv6AcceptRA = false;
              };

              routes = [
                {
                  Gateway = "45.11.229.1";
                }

                {
                  Gateway = "fe80::1";
                  GatewayOnLink = true;
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

              addresses = [
                {
                  Address = "138.124.240.75/32";
                }

                {
                  Address = "2a0d:d940:1a:1500::2/56";
                }
              ];

              networkConfig = {
                IPv6AcceptRA = false;
              };

              routes = [
                {
                  Gateway = "10.0.0.1";
                  GatewayOnLink = true;
                }

                {
                  Gateway = "2a0d:d940:1a:1500::1";
                  GatewayOnLink = true;
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

              addresses = [
                {
                  Address = "90.156.226.152";
                }

                {
                  Address = "2a03:6f01:1:2::cb1e";
                }
              ];

              routes = [
                {
                  Gateway = "90.156.226.1";
                }

                {
                  Gateway = "2a03:6f01:1:2::1";
                  GatewayOnLink = true;
                }
              ];

              networkConfig = {
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

              addresses = [
                {
                  Address = "138.124.72.244";
                }
              ];

              routes = [
                {
                  Gateway = "138.124.72.1";
                }
              ];
            };
          }
        )
      ];
    };
  };
}
