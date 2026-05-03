_: {
  services = {
    crowdsec = {
      enable = true;
      settings = {
        hub = {
          collections = [
            "crowdsecurity/linux"
            "crowdsecurity/traefik"
            "crowdsecurity/http-dos"
            "crowdsecurity/cloudflare"
          ];
        };

        acquisitions = [
          {
            source = "journalctl";

            journalctl_filter = [
              "_SYSTEMD_UNIT=traefik.service"
            ];

            labels = {
              type = "traefik";
            };
          }

          {
            source = "journalctl";

            journalctl_filter = [
              "_SYSTEMD_UNIT=sshd.service"
            ];

            labels = {
              type = "syslog";
            };
          }
        ];
      };
    };

    crowdsec-firewall-bouncer = {
      enable = true;

      settings = {
        mode = "firewalld";
      };
    };
  };
}
