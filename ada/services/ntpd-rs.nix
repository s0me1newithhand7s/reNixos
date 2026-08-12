_: {
  services = {
    ntpd-rs = {
      enable = true;
      useNetworkingTimeServers = false;

      settings = {
        source-defaults = {
          poll-interval-limits = {
            min = 6;
            max = 9;
          };
        };

        synchronization = {
          minimum-agreeing-sources = 1;
          accumulated-step-panic-threshold = 3600;
          single-step-panic-threshold = 1800;
          startup-step-panic-threshold = {
            forward = "inf";
            backward = 1800;
          };
        };

        source = [
          {
            mode = "server";
            address = "162.159.200.1";
          }

          {
            mode = "server";
            address = "2606:4700:f1::1";
          }

          {
            mode = "nts";
            address = "time.cloudflare.com";
          }
        ];
      };
    };
  };
}
