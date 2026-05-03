_: {
  services = {
    resolved = {
      enable = true;
      settings = {
        Resolve = {
          DNSOverTLS = true;
          DNSSEC = true;
          Domains = [
            "~."
          ];

          DNS = [
            # hand7s dns
            "127.0.0.1#dns.hand7s.org"
            "::1#dns.hand7s.org"

            # cf dns
            "1.1.1.1#cloudflare-dns.com"
            "1.0.0.1#cloudflare-dns.com"
            "2606:4700:4700::1111#cloudflare-dns.com"
            "2606:4700:4700::1001#cloudflare-dns.com"

            # google dns
            "8.8.8.8#dns.google"
            "8.8.4.4#dns.google"
            "2001:4860:4860::8888#dns.google"
            "2001:4860:4860::8844#dns.google"

            # q9 dns
            "9.9.9.9#dns.quad9.net"
            "149.112.112.112#dns.quad9.net"
            "2620:fe::fe#dns.quad9.net"
            "2620:fe::9#dns.quad9.net"
          ];
        };
      };
    };
  };
}
