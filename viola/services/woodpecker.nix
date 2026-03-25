{lib, ...}: {
  services = {
    woodpecker-server = {
      enable = true;
      environment = {
        WOODPECKER_OPEN = toString true;
        WOODPECKER_ADMINS = "s0me1newithhand7s";
        WOODPECKER_DATABASE_DRIVER = "postgres";
        WOODPECKER_SERVER_ADDR = ":53351";
        WOODPECKER_GRPC_ADDR = ":53352";
        WOODPECKER_HOST = "https://woodpecker.hand7s.org";

        WOODPECKER_AGENT_SECRET = lib.hashString "md5" "woodpeckerAgent";

        WOODPECKER_FORGEJO = toString true;
        WOODPECKER_FORGEJO_URL = "https://git.hand7s.org";
        WOODPECKER_FORGEJO_CLIENT = lib.hashString "md5" "replaceme1";
        WOODPECKER_FORGEJO_SECRET = lib.hashString "md5" "replaceme2";
      };
    };

    woodpecker-agents = {
      agents = {
        "podman" = {
          enable = true;
          extraGroups = [
            "podman"
          ];

          environment = {
            WOODPECKER_AGENT_SECRET = lib.hashString "md5" "woodpeckerAgent";
            WOODPECKER_SERVER = "localhost:53352";
            WOODPECKER_MAX_WORKFLOWS = "4";
            WOODPECKER_BACKEND = "docker";
            DOCKER_HOST = "unix:///var/run/podman/podman.sock";
          };
        };
      };
    };
  };
}
