{config, ...}: {
  security = {
    pam = {
      u2f = {
        enable = true;
        settings = {
          cue = true;
          authfile = config.sops.secrets."u2fKeys".path;
        };
      };
    };
  };
}
