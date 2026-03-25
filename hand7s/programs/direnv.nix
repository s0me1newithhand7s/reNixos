_: {
  programs = {
    direnv = {
      enable = true;
      silent = true;
      enableNushellIntegration = true;

      nix-direnv = {
        enable = true;
      };
    };
  };
}
