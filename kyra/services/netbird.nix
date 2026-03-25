{config, ...}: {
  services = {
    netbird = {
      enable = true;

      clients = {
        "wt0" = {
          port = 51820;
          login = {
            enable = true;
            setupKeyFile = config.sops.secrets."nbKey".path;
          };
        };
      };
    };
  };
}
