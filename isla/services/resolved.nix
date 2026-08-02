_: {
  services = {
    resolved = {
      enable = true;
      settings = {
        Resolve = {
          DNSOverTLS = "false";
          DNSSEC = "false";
          LLMNR = "false";
          MulticastDNS = false;

          DNS = [
            "127.0.0.1:5353"
            "[::1]:5353"
          ];

          FallbackDNS = [
            "127.0.0.1:5353"
            "[::1]:5353"
          ];

          Domains = [
            "~."
          ];
        };
      };
    };
  };
}
