_: {
  services = {
    blocky = {
      enable = true;
      settings = {
        ports = {
          dns = 53;
        };

        caching = {
          minTime = "5m";
          maxTime = "30m";
          prefetching = true;
        };

        bootstrapDns = {
          upstream = "";
          ips = [
            "1.1.1.1"
            "2606:4700:4700::1111"
          ];
        };

        upstreams = {
          groups = {
            default = [
              "tcp-tls:1.1.1.1:853"
              "tcp-tls:[2606:4700:4700::1111]:853"
              "https://cloudflare-dns.com/dns-query"
            ];
          };
        };
      };
    };
  };
}
