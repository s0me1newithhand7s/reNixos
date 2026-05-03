_: {
  environment = {
    persistence = {
      "/persist" = {
        enable = true;
        hideMounts = true;
        directories = [
          "/var/log"
          "/etc/ssh"
          "/var/lib/nixos"
          "/var/lib/netbird"
          "/var/lib/netbird-wt0"
          "/var/lib/firewalld"

          {
            directory = "/var/lib/traefik";
            user = "traefik";
            group = "traefik";
            mode = "0700";
          }

          {
            directory = "/var/lib/crowdsec";
            user = "crowdsec";
            group = "crowdsec";
            mode = "0750";
          }

          {
            directory = "/var/lib/sing-box";
            user = "sing-box";
            group = "sing-box";
            mode = "0700";
          }

          {
            directory = "/var/lib/step-ca";
            user = "step-ca";
            group = "step-ca";
            mode = "0700";
          }

          {
            directory = "/var/lib/acme";
            user = "acme";
            group = "acme";
            mode = "0751";
          }

          {
            directory = "/var/lib/otel-collector";
            user = "otel-collector";
            group = "otel-collector";
            mode = "0700";
          }
        ];

        files = [
          "/etc/machine-id"
        ];
      };
    };
  };
}
