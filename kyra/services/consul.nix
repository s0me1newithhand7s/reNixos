_: {
  services = {
    consul = {
      enable = true;
      webUi = false;

      interface = {
        bind = "nb-wt0";
        advertise = "nb-wt0";
      };

      extraConfig = {
        server = false;
        retry_join = [
          "100.109.123.164"
        ];

        services = [
          {
            name = "git-svc";
            port = 53350;
            tags = [
              "traefik.enable=true"
              "traefik.http.routers.git.rule=Host(`git.hand7s.org`)"
              "traefik.http.routers.git.entrypoints=websecure"
            ];

            check = {
              http = "http://localhost:3000/api/v1/version";
              interval = "10s";
            };
          }

          {
            name = "oidc-svc";
            port = 8443;
            tags = [
              "traefik.enable=true"
              "traefik.http.routers.oidc.rule=Host(`zitadel.hand7s.org`)"
              "traefik.http.routers.oidc.entrypoints=websecure"
            ];

            check = {
              http = "http://localhost:3000/api/v1/version";
              interval = "10s";
            };
          }

          {
            name = "bin-svc";
            port = 53352;
            tags = [
              "traefik.enable=true"
              "traefik.http.routers.bin.rule=Host(`bin.hand7s.org`)"
              "traefik.http.routers.bin.entrypoints=websecure"
            ];

            check = {
              http = "http://localhost:3000/api/v1/version";
              interval = "10s";
            };
          }

          {
            name = "cicd-svc";
            port = 53351;
            tags = [
              "traefik.enable=true"
              "traefik.http.routers.cicd.rule=Host(`woodpecker.hand7s.org`)"
              "traefik.http.routers.cicd.entrypoints=websecure"
            ];

            check = {
              http = "http://localhost:3000/api/v1/version";
              interval = "10s";
            };
          }

          {
            name = "lgtm-svc";
            port = 3030;
            tags = [
              "traefik.enable=true"
              "traefik.http.routers.lgtm.rule=Host(`grafana.hand7s.org`)"
              "traefik.http.routers.lgtm.entrypoints=websecure"
            ];

            check = {
              http = "http://localhost:3000/api/v1/version";
              interval = "10s";
            };
          }

          {
            name = "mc-svc";
            port = 25565;
            tags = [
              "traefik.enable=true"
              "traefik.tcp.routers.mc.rule=HostSNI(`mc.hand7s.org`)"
              "traefik.tcp.routers.mc.entrypoints=minecraft"
            ];
          }

          {
            name = "smtp-svc";
            port = 25;
            tags = [
              "traefik.enable=true"
              "traefik.tcp.routers.smtp.rule=HostSNI(`*`)"
              "traefik.tcp.routers.smtp.entrypoints=smtp"
            ];
          }

          {
            name = "pop3-svc";
            port = 110;
            tags = [
              "traefik.enable=true"
              "traefik.tcp.routers.pop3.rule=HostSNI(`*`)"
              "traefik.tcp.routers.pop3.entrypoints=pop3"
            ];
          }

          {
            name = "imap-svc";
            port = 143;
            tags = [
              "traefik.enable=true"
              "traefik.tcp.routers.imap.rule=HostSNI(`*`)"
              "traefik.tcp.routers.imap.entrypoints=imap"
            ];
          }

          {
            name = "submissions-svc";
            port = 465;
            tags = [
              "traefik.enable=true"
              "traefik.tcp.routers.submissions.rule=HostSNI(`*`)"
              "traefik.tcp.routers.submissions.entrypoints=submissions"
            ];
          }

          {
            name = "submission-svc";
            port = 587;
            tags = [
              "traefik.enable=true"
              "traefik.tcp.routers.submission.rule=HostSNI(`*`)"
              "traefik.tcp.routers.submission.entrypoints=submission"
            ];
          }

          {
            name = "pop3s-svc";
            port = 995;
            tags = [
              "traefik.enable=true"
              "traefik.tcp.routers.pop3s.rule=HostSNI(`*`)"
              "traefik.tcp.routers.pop3s.entrypoints=pop3s"
            ];
          }

          {
            name = "imaptls-svc";
            port = 993;
            tags = [
              "traefik.enable=true"
              "traefik.tcp.routers.imaptls.rule=HostSNI(`*`)"
              "traefik.tcp.routers.imaptls.entrypoints=imaptls"
            ];
          }

          {
            name = "managesieve-svc";
            port = 4190;
            tags = [
              "traefik.enable=true"
              "traefik.tcp.routers.managesieve.rule=HostSNI(`*`)"
              "traefik.tcp.routers.managesieve.entrypoints=managesieve"
            ];
          }
        ];
      };
    };
  };
}
