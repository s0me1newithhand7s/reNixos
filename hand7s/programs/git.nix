{
  pkgs,
  osConfig,
  ...
}: {
  programs = {
    git = {
      package = pkgs.git;
      settings = {
        user = {
          email = "git+me@hand7s.org";
          name = "s0me1newithhand7s";
        };

        signing = {
          format = "ssh";
          signByDefault = true;
          key = osConfig.sops.secrets.sshKey.path;
        };
      };
    };
  };
}
