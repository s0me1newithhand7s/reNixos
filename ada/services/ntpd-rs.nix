_: {
  services = {
    ntpd-rs = {
      enable = true;
      useNetworkingTimeServers = false;

      settings = {
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
            address = "ptbtime1.ptb.de";
          }
        ];
      };
    };
  };
}
