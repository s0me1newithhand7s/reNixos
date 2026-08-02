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
          "1.0.0.1"
          "2606:4700:4700::1111"
          "2606:4700:4700::1001"

          "8.8.8.8"
          "8.8.4.4"
          "2001:4860:4860::8888"
          "2001:4860:4860::8844"
        ];

        upstream = [
          "quic://dns.nextdns.io:784"
          "quic://adguard-dns.com:784"

          "https://1.1.1.1/dns-query?host=cloudflare-dns.com"
          "https://1.0.0.1/dns-query?host=cloudflare-dns.com"
          "https://[2606:4700:4700::1111]/dns-query?host=cloudflare-dns.com"
          "https://[2606:4700:4700::1001]/dns-query?host=cloudflare-dns.com"

          "tls://1.1.1.1#cloudflare-dns.com"
          "tls://1.0.0.1#cloudflare-dns.com"
          "tls://[2606:4700:4700::1111]:853#cloudflare-dns.com"
          "tls://[2606:4700:4700::1001]:853#cloudflare-dns.com"

          "https://8.8.8.8/dns-query?host=dns.google"
          "https://8.8.4.4/dns-query?host=dns.google"
          "https://[2001:4860:4860::8888]/dns-query?host=dns.google"
          "https://[2001:4860:4860::8844]/dns-query?host=dns.google"

          "tls://8.8.8.8#dns.google"
          "tls://8.8.4.4#dns.google"
          "tls://[2001:4860:4860::8888]:853#dns.google"
          "tls://[2001:4860:4860::8844]:853#dns.google"

          "https://9.9.9.9/dns-query?host=dns.quad9.net"
          "https://149.112.112.112/dns-query?host=dns.quad9.net"
          "https://[2620:fe::fe]/dns-query?host=dns.quad9.net"
          "https://[2620:fe::9]/dns-query?host=dns.quad9.net"

          "tls://9.9.9.9#dns.quad9.net"
          "tls://149.112.112.112#dns.quad9.net"
          "tls://[2620:fe::fe]:853#dns.quad9.net"
          "tls://[2620:fe::9]:853#dns.quad9.net"

          "https://208.67.222.222/dns-query?host=opendns.com"
          "https://208.67.220.220/dns-query?host=opendns.com"
          "https://[2620:119:35::35]/dns-query?host=opendns.com"
          "https://[2620:119:53::53]/dns-query?host=opendns.com"

          "tls://208.67.222.222#opendns.com"
          "tls://208.67.222.220#opendns.com"
          "tls://[2620:119:35::35]:853#opendns.com"
          "tls://[2620:119:53::53]:853#opendns.com"
        ];
      };
    };
  };
}
