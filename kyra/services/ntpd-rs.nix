_: {
  services = {
    ntpd-rs = {
      enable = true;
      metrics = {
        enable = true;
      };

      settings = {
        source = [
          {
            mode = "nts";
            address = "time.cloudflare.com";
          }

          {
            mode = "nts";
            address = "nts.ntp.se";
          }
        ];

        server = [
          {
            listen = "[::]:123";
          }
        ];

        nts-ke-server = [
          {
            listen = "[::]:4460";
            certificate-chain-path = "/var/lib/acme/ntp.hand7s.org/fullchain.pem";
            private-key-path = "/var/lib/acme/ntp.hand7s.org/key.pem";
          }
        ];

        synchronization = {
          minimum-agreeing-sources = 2;
        };
      };
    };
  };
}
