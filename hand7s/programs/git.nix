{
  pkgs,
  osConfig,
  ...
}: {
  programs = {
    git = {
      enable = true;
      package = pkgs.git;
      userEmail = "117505144+s0me1newithhand7s@users.noreply.github.com";
      userName = "s0me1newithhand7s";
      aliases = {
        pushall = "push github && push gitlab";
        pushall-f = "push --force github && push --force gitlab";
      };

      signing = {
        format = "ssh";
        signByDefault = true;
        key = osConfig.sops.secrets.sshKey.path;
      };

      lfs = {
        enable = true;
      };
    };
  };
}
