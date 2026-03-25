{config, ...}: {
  services = {
    stalwart = {
      enable = true;
      settings = {
        server = {
          allowed-ip = [
            "127.0.0.1"
            "100.109.201.146"
            "192.168.1.0/24"
          ];

          auto-ban = {
            enable = false;
            unban-after = "1h";
          };

          proxy = {
            trusted-networks = [
              "127.0.0.0/8"
              "::1"
              "100.109.201.146"
            ];
          };

          hostname = "mail.hand7s.org";

          proxy-networks = [
            "127.0.0.1/32"
            "100.109.201.146"
          ];

          listener = {
            "lmtp" = {
              bind = "0.0.0.0:24";
              protocol = "lmtp";
            };

            "smtp" = {
              bind = "0.0.0.0:25";
              protocol = "smtp";
              proxy-protocol = true;
            };

            "pop3" = {
              bind = "0.0.0.0:110";
              protocol = "pop3";
              proxy-protocol = true;
            };

            "imap" = {
              bind = "0.0.0.0:143";
              protocol = "imap";
              proxy-protocol = true;
              tls = {
                enable = true;
                implicit = false;
                certificate = "default";
              };
            };

            "submissions" = {
              bind = "0.0.0.0:465";
              protocol = "smtp";
              proxy-protocol = true;
              tls = {
                certificate = "default";
                implicit = true;
                enable = true;
              };
            };

            "submission" = {
              bind = "0.0.0.0:587";
              protocol = "smtp";
              proxy-protocol = true;
              tls = {
                enable = true;
                implicit = false;
                certificate = "default";
              };
            };

            "imaptls" = {
              bind = "0.0.0.0:993";
              protocol = "imap";
              proxy-protocol = true;
              tls = {
                certificate = "default";
                implicit = true;
                enable = true;
              };
            };

            "pop3s" = {
              bind = "0.0.0.0:995";
              protocol = "pop3";
              proxy-protocol = true;
              tls = {
                certificate = "default";
                implicit = true;
                enable = true;
              };
            };

            "sieve" = {
              bind = "0.0.0.0:4190";
              proxy-protocol = true;
              protocol = "managesieve";
            };

            "management" = {
              protocol = "http";
              bind = [
                "0.0.0.0:8980"
              ];
            };
          };
        };

        lookup = {
          default = {
            hostname = "mail.hand7s.org";
            domain = "hand7s.org";
          };
        };

        storage = {
          data = "postgresql";
          blob = "s3";
          fts = "postgresql";
          lookup = "redis";
        };

        store = {
          "postgresql" = {
            type = "postgresql";
            host = "localhost";
            timeout = "15s";

            tls = {
              enable = false;
              allow-invalid-certs = false;
            };

            pool = {
              max-connections = 10;
            };
          };

          "redis" = {
            type = "redis";
            redis-type = "single";
            urls = ''redis+unix:///run/redis-stalwart/redis.sock?password=${config.services."stalwart".settings.requirePass}'';
            timeout = "180s";
          };
        };

        oauth = {
          "zitadel" = {
            type = "oidc";
            issuer = "http://zitadel.hand7s.org:8443/.well-known/openid-configuration";
            tls-allow-invalid-certs = true;
          };
        };

        directory = {
          "zitadel" = {
            type = "oidc";
            timeout = "1s";
            issuer = "http://zitadel.hand7s.org:8443/.well-known/openid-configuration";
            tls-allow-invalid-certs = true;
          };
        };

        authentication = {
          directories = [
            "zitadel"
          ];

          oauth = [
            "zitadel"
          ];
        };

        tracer = {
          journal = {
            enable = true;
            type = "journal";
            level = "debug";
          };

          otlp = {
            enable = true;
            type = "open-telemetry";
            endpoint = "http://127.0.0.1:4317";
            transport = "grpc";
            level = "info";
          };

          console = {
            enable = true;
            type = "console";
            level = "trace";
          };
        };
      };
    };
  };
}
