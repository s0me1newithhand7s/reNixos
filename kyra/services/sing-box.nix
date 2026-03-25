{lib, ...}: {
  services = {
    sing-box = {
      enable = true;
      settings = {
        log = {
          level = "error";
        };

        dns = {
          servers = [
            {
              tag = "cloudflare";
              type = "quic";
              server = "1.1.1.1";
            }

            {
              tag = "local";
              type = "local";
            }
          ];

          final = "cloudflare";
          strategy = "prefer_ipv4";
        };

        route = {
          final = "direct-out";
          default_domain_resolver = "cloudflare";
          auto_detect_interface = true;
        };

        outbounds = [
          {
            tag = "direct-out";
            type = "direct";
          }
        ];

        inbounds = [
          {
            type = "hysteria2";
            tag = "hy2-in";
            listen = "::";
            listen_port = 2053;
            masquerade = "https://hand7s.org";
            up_mbps = 100;
            down_mbps = 100;
            obfs = {
              type = "salamander";
              password = lib.hashString "sha512" "randomstring"; # not a real string
            };

            users = [
              {
                name = "hand7s";
                password = lib.hashString "sha512" "userstring"; # not a real string
              }
            ];

            tls = {
              enabled = true;
              server_name = "hand7s.org";
              certificate_path = "/var/lib/acme/hand7s.org/cert.pem";
              key_path = "/var/lib/acme/hand7s.org/key.pem";
            };
          }

          {
            type = "vless";
            tag = "vless-inbound";

            listen = "::";
            listen_port = 8443;

            sniff = true;

            users = [
              {
                name = "hand7s";
                uuid = lib.hashString "sha512" "uuidstring"; # not a real string
                flow = "xtls-rprx-vision";
              }
            ];

            tls = {
              enabled = true;
              server_name = "hand7s.org";
              reality = {
                enabled = true;
                max_time_difference = "5m";
                handshake = {
                  server = "127.0.0.1";
                  server_port = 443;
                };

                private_key = lib.hashString "sha512" "uuidstring"; # not a real string

                short_id = [
                  "shortie"
                ];
              };
            };
          }
        ];
      };
    };
  };
}
