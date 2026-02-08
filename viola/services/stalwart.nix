_: {
  services = {
    stalwart-mail = {
      enable = true;
      settings = {
        acme = {
          "cloudflare" = {
            default = true;
            challenge = "dns-01";
            provider = "cloudflare";
            origin = "hand7s.org";
            secret = "${mail_secret}";
            contact = [
              "me@hand7s.org"
            ];

            email = "me@hand7s.org";
            directory = "https://acme-staging-v02.api.letsencrypt.org/directory";
            domains = [
              "mail.hand7s.org"
            ];
          };
        };

        server = {
          hostname = "mail.hand7s.org";

          proxy = {
            trusted-networks = [
              "::1"
              "100.109.213.170/16"
            ];
          };

          listener = {
            "lmtp" = {
              bind = "[::]:24";
              protocol = "lmtp";
            };

            "smtp" = {
              bind = "[::]:25";
              protocol = "smtp";
            };

            "pop3" = {
              bind = "[::]:110";
              protocol = "pop3";
            };

            "imap" = {
              bind = "[::]:143";
              protocol = "imap";
            };

            "submissions" = {
              bind = "[::]:465";
              protocol = "smtp";
            };

            "submission" = {
              bind = "[::]:587";
              protocol = "smtp";
            };

            "imaptls" = {
              bind = "[::]:993";
              protocol = "smtp";
            };

            "pop3s" = {
              bind = "[::]:995";
              protocol = "pop3";
            };

            "sieve" = {
              bind = "[::]:4190";
              protocol = "managesieve";
            };

            "management" = {
              protocol = "http";
              bind = [
                "127.0.0.1:8980"
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
          # nope
          # i'm not redacting my main config
          # here to show it here
          # refer to stalwart mail
          # ty
        };

        authentication = {
          fallback-admin = {
            user = "admin";
            secret = "admin";
          };
        };

        tracer = {
          journal = {
            enable = true;
            type = "journal";
            level = "debug";
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
