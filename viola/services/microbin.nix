{config, ...}: {
  services = {
    microbin = {
      enable = true;
      passwordFile = toString config.sops.secrets.microbinPass;
      settings = {
        MICROBIN_PORT = 8080;
        MICROBIN_BIND = "[::]";
        MICROBIN_PUBLIC_PATH = "bin.hand7s.org";
        MICROBIN_READONLY = true;
        MICROBIN_ENABLE_BURN_AFTER = true;
        MICROBIN_DEFAULT_BURN_AFTER = 100;
        MICROBIN_DEFAULT_EXPIRY = "1week";
        MICROBIN_QR = true;
      };
    };
  };
}
