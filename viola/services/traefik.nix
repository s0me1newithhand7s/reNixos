{config, ...}: {
  services = {
    traefik = {
      enable = true;

      environmentFiles = [
        config.sops.templates."traefik.env".path
      ];

      dynamicConfigOptions = {
        http = {
          routers = {
            "home" = {
              rule = "Host(`home.hand7s.org`)";
              service = "home-svc";
              tls = {
                certResolver = "cloudflare";
                domains = [
                  {
                    main = "hand7s.org";
                    sans = "*.hand7s.org";
                  }
                ];
              };

              entryPoints = [
                "websecure"
              ];
            };

            "pass" = {
              rule = "Host(`pass.hand7s.org`)";
              service = "pass-svc";
              tls = {
                certResolver = "cloudflare";
                domains = [
                  {
                    main = "hand7s.org";
                    sans = "*.hand7s.org";
                  }
                ];
              };

              entryPoints = [
                "websecure"
              ];
            };

            "luci" = {
              rule = "Host(`luci.hand7s.org`)";
              service = "luci-svc";
              tls = {
                certResolver = "cloudflare";
                domains = [
                  {
                    main = "hand7s.org";
                    sans = "*.hand7s.org";
                  }
                ];
              };

              entryPoints = [
                "websecure"
              ];
            };

            "sync" = {
              rule = "Host(`sync.hand7s.org`)";
              service = "sync-svc";
              tls = {
                certResolver = "cloudflare";
                domains = [
                  {
                    main = "hand7s.org";
                    sans = "*.hand7s.org";
                  }
                ];
              };
            };

            entryPoints = [
              "websecure"
            ];
          };

          services = {
            "home-svc" = {
              loadBalancer = {
                servers = [
                  {
                    url = "http://127.0.0.1:8080";
                  }
                ];
              };
            };

            "pass-svc" = {
              loadBalancer = {
                servers = [
                  {
                    url = "http://127.0.0.1:53353";
                  }
                ];
              };
            };

            "sync-svc" = {
              loadBalancer = {
                servers = [
                  {
                    url = "http://127.0.0.1:80";
                  }
                ];
              };
            };

            "luci-svc" = {
              loadBalancer = {
                servers = [
                  {
                    url = "http://192.168.1.2";
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
              email = "litvinovb0@gmail.com";
              storage = "${config.services.traefik.dataDir}/acme.json";
              dnsChallenge = {
                provider = "cloudflare";
                resolvers = [
                  "1.1.1.1:53"
                  "8.8.8.8:53"
                ];
              };
            };
          };
        };

        log = {
          level = "INFO";
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
        };
      };
    };
  };
}
