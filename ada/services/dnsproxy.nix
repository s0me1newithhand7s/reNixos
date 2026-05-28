_: {
  services = {
    dnsproxy = {
      enable = true;
      settings = {
        listen-addrs = [
          "127.0.0.1"
          "::1"
        ];

        listen-ports = [
          5353
        ];

        http3 = true;
        cache = true;
        cache-size = 4096;
        all-servers = true;
        dnssec = true;

        bootstrap = [
          "1.1.1.1"
          "8.8.8.8"
          "9.9.9.9"
        ];

        upstream = [
          "https://1.1.1.1/dns-query?host=cloudflare-dns.com"
          "https://1.0.0.1/dns-query?host=cloudflare-dns.com"

          "https://8.8.8.8/dns-query?host=dns.google"
          "https://8.8.4.4/dns-query?host=dns.google"

          "https://9.9.9.9/dns-query?quad9.net"
          "https://149.112.112.112/dns-query?host=quad9.net"

          "https://208.67.222.222/dns-query?host=dns.google"
          "https://208.67.220.220/dns-query?host=dns.google"
        ];
      };
    };
  };
}
