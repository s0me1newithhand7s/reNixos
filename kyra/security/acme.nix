{config, ...}: {
  security = {
    acme = {
      acceptTerms = true;
      defaults = {
        email = "me@hand7s.org";
      };

      certs = {
        "hand7s.org" = {
          dnsProvider = "cloudflare";
          environmentFile = config.sops.templates."acme.env".path;
          group = "mihomo";
        };

        "ntp.hand7s.org" = {
          dnsProvider = "cloudflare";
          environmentFile = config.sops.templates."acme.env".path;
          group = "ntpd-rs";
        };
      };
    };
  };
}
