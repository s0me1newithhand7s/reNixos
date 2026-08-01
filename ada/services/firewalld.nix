_: {
  services = {
    firewalld = {
      enable = true;

      settings = {
        IPv6_rpfilter = "loose";
        CleanupModulesOnExit = true;
        FlushAllOnReload = true;
        RFC3964_IPv4 = true;
        NftablesCounters = false;
        IndividualCalls = false;
      };

      services = {
        "sunshine" = {
          ports = [
            {
              port = 47984;
              protocol = "tcp";
            }

            {
              port = 47985;
              protocol = "tcp";
            }

            {
              port = 47986;
              protocol = "tcp";
            }

            {
              port = 47987;
              protocol = "tcp";
            }

            {
              port = 47988;
              protocol = "tcp";
            }

            {
              port = 47989;
              protocol = "tcp";
            }

            {
              port = 47990;
              protocol = "tcp";
            }

            {
              port = 48010;
              protocol = "tcp";
            }

            {
              port = 47998;
              protocol = "udp";
            }

            {
              port = 47999;
              protocol = "udp";
            }

            {
              port = 48000;
              protocol = "udp";
            }

            {
              port = 48002;
              protocol = "udp";
            }

            {
              port = 48010;
              protocol = "udp";
            }
          ];
        };
      };

      zones = {
        "wan" = {
          interfaces = [
            "eno1"
          ];

          services = [
            "sunshine"
            "steam-streaming"
          ];

          ports = [
            {
              port = 8082;
              protocol = "tcp";
            }
          ];
        };
      };
    };
  };
}
