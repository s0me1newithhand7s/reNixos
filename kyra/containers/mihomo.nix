_: {
  containers = {
    "mihomo" = {
      autoStart = true;
      privateNetwork = true;
      hostAddress = "192.168.101.1";
      localAddress = "192.168.101.2";

      bindMounts = {
        "acme" = {
          isReadOnly = true;
          hostPath = "/var/lib/acme/hand7s.org";
          mountPoint = "/var/lib/acme/hand7s.org";
        };
      };

      config = {
        pkgs,
        name,
        lib,
        ...
      }: {
        services = {
          mihomo = {
            enable = true;
            configFile = (pkgs.formats.yaml {}).generate "config.yaml" {
              dns = {
                enable = true;
                enhanced-mode = "fake-ip";
                respect-rules = true;
                nameserver = [
                  "tcp://192.168.101.1:8853"
                ];
              };

              sniffer = {
                enable = true;
                sniff = {
                  quic = {
                    ports = [
                      443
                    ];
                  };

                  tls = {
                    override-destination = true;
                    ports = [
                      443
                      8443
                    ];
                  };
                };
              };

              rules = [
                "IP-CIDR,10.0.0.0/8,DIRECT,no-resolve"
                "IP-CIDR,127.0.0.0/8,DIRECT,no-resolve"

                "MATCH,direct"
              ];

              experimental = {
                udp-base-routing = true;
              };

              profile = {
                store-selected = false;
                store-fake-ip = false;
              };

              listeners = [
                {
                  name = "hy2-in";
                  type = "hysteria2";
                  listen = "[::]";
                  port = 443;
                  masquerade = "https://hand7s.org";
                  up = "100 Mbps";
                  down = "100 Mpbs";
                  obfs = "salamander";
                  obfs-password = lib.hashString "md5" "password";

                  certificate = "/var/lib/acme/hand7s.org/cert.pem";
                  private-key = "/var/lib/acme/hand7s.org/key.pem";

                  users = [
                    "hand7s:"
                  ];
                }

                {
                  name = "vless-in";
                  type = "vless";
                  listen = "[::]";
                  port = 8443;
                  udp = true;

                  reality-config = {
                    dest = "192.168.101.1:444";
                    private-key = lib.hasString "md5" "pkb";

                    short-id = [
                      "shortie"
                    ];

                    server-names = [
                      "${name}.hand7s.org"
                    ];
                  };

                  users = [
                    {
                      username = "hand7s";
                      flow = "xtls-rprx-vision";
                      uuid = "very-real-uuid-btws";
                    }
                  ];
                }
              ];
            };
          };
        };
      };
    };
  };
}
