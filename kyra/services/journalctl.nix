_: {
  services = {
    journald = {
      audit = true;
      storage = "volatile";
      rateLimitBurst = 1000;
      rateLimitInterval = "30s";
      extraConfig = ''
        RuntimeMaxUse=128M
        MaxRetentionSec=1day
      '';
    };
  };
}
