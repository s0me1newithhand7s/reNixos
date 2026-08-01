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
            mode = "nts";
            address = "time.cloudflare.com";
          }

          {
            mode = "nts";
            address = "nts.netnod.se";
          }

          {
            mode = "nts";
            address = "nts.ntp.se";
          }
        ];
      };
    };
  };
}
