{...}: {
  services = {
    sing-box = {
      enable = true;
      settings = {
        log = {
          level = "debug";
        };

        dns = {
          servers = [
            {
              type = "local";
              tag = "local";
            }
          ];

          final = "local";
          strategy = "prefer_ipv6";
        };

        route = {
          final = "direct-out";
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
            type = "vless";
            tag = "vless-inbound";

            listen = "::";
            listen_port = 53570;

            users = [
              {
                name = "hand7s_1";
                uuid = "${singboxUUID2}";
                flow = "xtls-rprx-vision";
              }

              {
                name = "hand7s_2";
                uuid = "${singboxUUID2}";
                flow = "xtls-rprx-vision";
              }
            ];

            tls = rec {
              enabled = true;
              server_name = "vk.com";
              reality = {
                enabled = true;
                max_time_difference = "5m";
                handshake = {
                  server = server_name;
                  server_port = 443;
                };

                private_key = "${singboxKey}";

                short_id = [
                  "${singboxId}"
                ];
              };
            };

            transport = {
              type = "httpupgrade";
            };

            multiplex = {
              enabled = true;
              padding = false;
            };
          }
        ];
      };
    };
  };
}
