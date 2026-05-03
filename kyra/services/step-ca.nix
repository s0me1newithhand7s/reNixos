{config, ...}: {
  services = {
    step-ca = {
      enable = true;
      address = "[::]";
      port = 8443;
      intermediatePasswordFile = config.sops.secrets."stepPass".path;

      settings = {
        dnsNames = [
          "ca.hand7s.org"
        ];

        authority = {
          provisioners = [
            {
              type = "ACME";
              name = "cloudflare";
              claims = {
                enable_dns_01 = true;
              };
            }
          ];
        };
      };
    };
  };
}
