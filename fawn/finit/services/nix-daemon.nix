{config, ...}: {
  finit = {
    services = {
      "nix-daemon" = {
        environment = {
          CURL_CA_BUNDLE = config.security.pki.caBundle;
        };
      };
    };
  };
}
