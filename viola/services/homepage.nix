_: {
  services = {
    homepage-dashboard = {
      enable = true;
      allowedHosts = "localhost:8080,127.0.0.1:8080,192.168.1.144:8080,100.109.71.194:8080,home.hand7s.org";
      listenPort = 8080;

      settings = {
        title = "hand7s homepage";
        description = "duh";
        theme = "dark";
        background = "https://w.wallhaven.cc/full/1q/wallhaven-1q87xv.png";
        color = "violet";
        headerStyle = "boxed";
      };

      bookmarks = [
      ];

      services = [
        {
          "Local-only" = [
            {
              "Vaultwarden" = {
                icon = "vaultwarden";
                href = "https://pass.hand7s.org";
                description = "vaultwarden";
              };
            }

            {
              "Syncthing" = {
                icon = "syncthing";
                href = "https://sync.hand7s.org";
                description = "syncing";
              };
            }

            {
              "OpenWRT" = {
                icon = "openwrt";
                href = "https://luci.hand7s.org";
                description = "router";
              };
            }
          ];
        }

        {
          "Local-host" = [
            {
              "Grafana" = {
                icon = "grafana";
                href = "https://grafana.hand7s.org";
                description = "observability";
              };
            }

            {
              "Forgejo" = {
                icon = "gitea";
                href = "https://git.hand7s.org";
                description = "git";
              };
            }

            {
              "Woodpecker" = {
                icon = "woodpecker-ci";
                href = "https://woodpecker.hand7s.org/";
                description = "cicd";
              };
            }

            {
              "Stalwart" = {
                icon = "stalwart";
                href = "https://mail.hand7s.org";
                description = "mail";
              };
            }

            {
              "Zitadel" = {
                icon = "zitadel";
                href = "https://zitadel.hand7s.org";
                description = "idp";
              };
            }
          ];
        }
      ];

      widgets = [
        {
          greeting = {
            text_size = "xl";
            text = "Hi, hand7s.";
          };
        }

        {
          search = {
            provider = "google";
            target = "_blank";
            focus = true;
          };
        }

        {
          search = {
            provider = "perplexity";
            target = "_blank";
            focus = false;
          };
        }

        {
          resources = {
            cpu = true;
            memory = true;
            disk = "/";
            cputemp = true;
            uptime = true;
            units = "metric";
            refresh = 3000;
            network = true;
          };
        }
      ];
    };
  };
}
