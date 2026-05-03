_: {
  services = {
    hickory-dns = {
      enable = true;
      settings = {
        remote_resolvers = [
          {
            socket_addr = "1.1.1.1:853";
            protocol = "tls";
            tls_dns_name = "cloudflare-dns.com";
          }

          {
            socket_addr = "1.1.1.1:443";
            protocol = "https";
            tls_dns_name = "cloudflare-dns.com";
          }

          {
            socket_addr = "9.9.9.9:853";
            protocol = "tls";
            tls_dns_name = "dns.quad9.net";
          }

          {
            socket_addr = "9.9.9.9:443";
            protocol = "https";
            tls_dns_name = "dns.quad9.net";
          }

          {
            socket_addr = "8.8.8.8:853";
            protocol = "tls";
            tls_dns_name = "dns.google";
          }

          {
            socket_addr = "8.8.8.8:443";
            protocol = "https";
            tls_dns_name = "dns.google";
          }
        ];

        listen_addrs_http = [
          {
            socket_addr = "[::]:8053";
          }
        ];

        listen_addrs_tcp = [
          {
            socket_addr = "[::]:8853";
          }
        ];
      };
    };
  };
}
