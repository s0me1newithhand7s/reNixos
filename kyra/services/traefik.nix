{
  config,
  name,
  ...
}: {
  services = {
    traefik = {
      enable = true;

      environmentFiles = [
        config.sops.templates."traefik.env".path
      ];

      dynamicConfigOptions = {
        providers = {
          consulCatalog = {
            endpoint = {
              address = "127.0.0.1:8500";
              exposedByDefault = false;
              prefix = "traefik";
            };
          };
        };

        udp = {
          routers = {
            "ntp" = {
              service = "ntp-svc";
              entryPoints = [
                "ntp"
              ];
            };
          };

          services = {
            "ntp-svc" = {
              loadBalancer = {
                servers = [
                  {
                    address = "127.0.0.1:123";
                  }
                ];
              };
            };
          };
        };

        http = {
          routers = {
            "site" = {
              rule = "Host(`hand7s.org`)";
              service = "site-svc";
              tls = {
                certResolver = "cloudflare";
                domains = [
                  {
                    main = "hand7s.org";
                    sans = [
                      "*.hand7s.org"
                    ];
                  }
                ];
              };

              entryPoints = [
                "websecure"
                "loopback"
              ];
            };

            "ca" = {
              rule = "Host(`ca.hand7s.org`)";
              service = "ca-svc";
              tls = {
                certResolver = "cloudflare";
                domain = [
                  {
                    main = "hand7s.org";
                    sans = [
                      "*.hand7s.org"
                    ];
                  }
                ];
              };
            };

            "doh" = {
              rule = "Host(`dns.hand7s.org`) && PathPrefix(`/dns-query`)";
              service = "doh-svc";
              tls = {
                certResolver = "cloudflare";
                domains = [
                  {
                    main = "hand7s.org";
                    sans = [
                      "*.hand7s.org"
                    ];
                  }
                ];
              };

              entryPoints = [
                "websecure"
              ];
            };
          };

          services = {
            "site-svc" = {
              loadBalancer = {
                servers = [
                  {
                    url = "http://100.109.123.164:8180";
                  }
                ];
              };
            };

            "ca-svc" = {
              loadBalancer = {
                servers = [
                  {
                    url = "http://127.0.0.1:8443";
                  }
                ];
              };
            };

            "doh-svc" = {
              loadBalancer = {
                servers = [
                  {
                    url = "http://127.0.0.1:8053";
                  }
                ];
              };
            };
          };
        };

        tcp = {
          routers = {
            "nts-ke" = {
              rule = "HostSNI(`ntp.hand7s.org`)";
              services = "nts-ke-svc";
              tls = {
                passthrough = true;
              };

              entryPoints = [
                "nts-ke"
              ];
            };

            "dot" = {
              rule = "HostSNI(`dns.hand7s.org`)";
              services = "dot-svc";
              entryPoints = [
                "dot"
              ];

              tls = {
                certResolver = "cloudflare";
              };
            };

            "vless" = {
              rule = "HostSNI(`${name}.hand7s.org`)";
              service = "vless-svc";
              tls = {
                passthrough = true;
              };

              entryPoints = [
                "websecure"
              ];
            };
          };

          services = {
            "vless-svc" = {
              loadBalancer = {
                servers = [
                  {
                    address = "192.168.101.2:8443";
                  }
                ];
              };
            };

            "nts-ke-svc" = {
              loadBalancer = {
                servers = [
                  {
                    address = "127.0.0.1:4460";
                  }
                ];
              };
            };

            "dot-svc" = {
              loadBalancer = {
                servers = [
                  {
                    url = "http://127.0.0.1:8853";
                  }
                ];
              };
            };
          };
        };
      };

      staticConfigOptions = {
        api = {
          dashboard = true;
        };

        tracing = {
          otlp = {
            grpc = {
              endpoint = "127.0.0.1:4317";
              insecure = true;
            };
          };
        };

        certificatesResolvers = {
          "cloudflare" = {
            acme = {
              email = "me@hand7s.com";
              storage = "${config.services.traefik.dataDir}/acme.json";
              dnsChallenge = {
                provider = "cloudflare";
              };
            };
          };

          "step-ca" = {
            caServer = "https://ca.hand7s.org";
            acme = {
              email = "me@hand7s.com";
              storage = "${config.services.traefik.dataDir}/acme.json";
              tlsChallenge = {};
            };
          };
        };

        log = {
          level = "DEBUG";
        };

        entryPoints = {
          "web" = {
            address = ":80";
            http = {
              redirections = {
                entryPoint = {
                  to = "websecure";
                  scheme = "https";
                };
              };
            };
          };

          "websecure" = {
            address = ":443";
            http = {
              tls = {
                certResolver = "cloudflare";
                domains = [
                  {
                    main = "hand7s.org";
                    sans = [
                      "*.hand7s.org"
                    ];
                  }
                ];
              };
            };
          };

          "loopback" = {
            address = "127.0.0.1:444";
            http = {
              tls = {
                certResolver = "cloudflare";
                domains = [
                  {
                    main = "hand7s.org";
                    sans = [
                      "*.hand7s.org"
                    ];
                  }
                ];
              };
            };
          };

          "ntp" = {
            address = ":123";
          };

          "nts-ke" = {
            address = ":4460";
          };

          "dot" = {
            address = ":853";
          };

          "minecraft" = {
            address = ":25565";
          };

          "smtp" = {
            address = ":25";
          };

          "pop3" = {
            address = ":110";
          };

          "imap" = {
            address = ":143";
          };

          "submissions" = {
            address = ":465";
          };

          "submission" = {
            address = ":587";
          };

          "imaptls" = {
            address = ":993";
          };

          "pop3s" = {
            address = ":995";
          };

          "managesieve" = {
            address = ":4190";
          };
        };
      };
    };
  };
}
