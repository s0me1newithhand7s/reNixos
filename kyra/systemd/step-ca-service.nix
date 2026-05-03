{config, ...}: {
  systemd = {
    services = {
      "step-ca" = {
        serviceConfig = {
          EnvironmentFile = [
            config.sops.templates."step-ca.env".path
          ];
        };
      };
    };
  };
}
