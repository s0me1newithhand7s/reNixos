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
            "site" = {
              rule = "Host(`hand7s.org`)";
              service = "site-svc";
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

            "git" = {
              rule = "Host(`git.hand7s.org`)";
              service = "git-svc";
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

            "cicd" = {
              rule = "Host(`woodpecker.hand7s.org`)";
              service = "cicd-svc";
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

            "oidc" = {
              rule = "Host(`zitadel.hand7s.org`)";
              service = "oidc-svc";
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

            "bin" = {
              rule = "Host(`bin.hand7s.org`)";
              service = "bin-svc";
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

            "lgtm" = {
              rule = "Host(`grafana.hand7s.org`)";
              service = "lgtm-svc";
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

            "git-svc" = {
              loadBalancer = {
                servers = [
                  {
                    url = "http://100.109.123.164:53350";
                  }
                ];
              };
            };

            "oidc-svc" = {
              loadBalancer = {
                servers = [
                  {
                    url = "http://100.109.123.164:8443";
                  }
                ];
              };
            };

            "bin-svc" = {
              loadBalancer = {
                servers = [
                  {
                    url = "http://100.109.123.164:53352";
                  }
                ];
              };
            };

            "cicd-svc" = {
              loadBalancer = {
                servers = [
                  {
                    url = "http://100.109.123.164:53351";
                  }
                ];
              };
            };

            "lgtm-svc" = {
              loadBalancer = {
                servers = [
                  {
                    url = "http://100.109.123.164:3030";
                  }
                ];
              };
            };
          };
        };

        tcp = {
          routers = {
            "minecraft" = {
              rule = "HostSNI(`*`)";
              service = "mc-svc";
              entryPoints = [
                "minecraft"
              ];
            };

            "smtp" = {
              rule = "HostSNI(`*`)";
              service = "smtp-svc";
              entryPoints = [
                "smtp"
              ];
            };

            "pop3" = {
              rule = "HostSNI(`*`)";
              service = "pop-svc";
              entryPoints = [
                "pop3"
              ];
            };

            "submissions" = {
              rule = "HostSNI(`mail.hand7s.org`)";
              service = "submissions-svc";
              entryPoints = [
                "submissions"
              ];
            };

            "submission" = {
              rule = "HostSNI(`*`)";
              service = "submission-svc";
              entryPoints = [
                "submission"
              ];
            };

            "imaptls" = {
              rule = "HostSNI(`mail.hand7s.org`)";
              service = "imaptls-svc";
              entryPoints = [
                "imaptls"
              ];
            };

            "pop3s" = {
              rule = "HostSNI(`mail.hand7s.org`)";
              service = "pop3s-svc";
              entryPoints = [
                "pop3s"
              ];
            };

            "managesieve" = {
              rule = "HostSNI(`*`)";
              service = "managesieve-svc";
              entryPoints = [
                "managesieve"
              ];
            };
          };
        };

        services = {
          "mc-svc" = {
            loadBalancer = {
              servers = [
                {
                  address = "100.109.123.164:25565";
                }
              ];
            };
          };

          "smtp-svc" = {
            loadBalancer = {
              servers = [
                {
                  address = "100.109.123.164:25";
                }
              ];
            };
          };

          "pop3-svc" = {
            loadBalancer = {
              servers = [
                {
                  address = "100.109.123.164:110";
                }
              ];
            };
          };

          "imap-svc" = {
            loadBalancer = {
              servers = [
                {
                  address = "100.109.123.164:143";
                }
              ];
            };
          };

          "submissions-svc" = {
            loadBalancer = {
              servers = [
                {
                  address = "100.109.123.164:465";
                }
              ];
            };
          };

          "submission-svc" = {
            loadBalancer = {
              servers = [
                {
                  address = "100.109.123.164:587";
                }
              ];
            };
          };

          "imaptls-svc" = {
            loadBalancer = {
              servers = [
                {
                  address = "100.109.123.164:993";
                }
              ];
            };
          };

          "pop3s-svc" = {
            loadBalancer = {
              servers = [
                {
                  address = "100.109.123.164:995";
                }
              ];
            };
          };

          "managesieve-svc" = {
            loadBalancer = {
              servers = [
                {
                  address = "100.109.123.164:4190";
                }
              ];
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
