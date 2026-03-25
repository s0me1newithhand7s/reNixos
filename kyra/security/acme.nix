{config, ...}: {
  security = {
    acme = {
      acceptTerms = true;
      defaults = {
        email = "litvinovb0@gmail.com";
      };

      certs = {
        "hand7s.org" = {
          dnsProvider = "cloudflare";
          credentialsFile = config.sops.templates."acme.env".path;
          group = "sing-box";
        };
      };
    };
  };
}
