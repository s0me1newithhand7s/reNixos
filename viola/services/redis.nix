{pkgs, ...}: {
  services = {
    redis = {
      package = pkgs.valkey;
      servers = {
        "forgejo" = {
          enable = true;
          port = 6381;
          logLevel = "warning";
          databases = 16;
          maxclients = 10000;
          requirePass = "forgejo";

          settings = {
            stop-writes-on-bgsave-error = "yes";
            rdbcompression = "yes";
            rdbchecksum = "yes";

            maxmemory = "1GB";
            maxmemory-policy = "volatile-lru";
            maxmemory-samples = 3;
          };

          save = [
            [
              900
              1
            ]

            [
              300
              10
            ]

            [
              60
              1000
            ]
          ];
        };

        "stalwart" = {
          enable = true;
          port = 6382;
          logLevel = "warning";
          databases = 16;
          maxclients = 10000;
          requirePass = lib.hashString "md5" "stalwart";

          settings = {
            stop-writes-on-bgsave-error = "yes";
            rdbcompression = "yes";
            rdbchecksum = "yes";

            maxmemory = "1GB";
            maxmemory-policy = "volatile-lru";
            maxmemory-samples = 3;
          };

          save = [
            [
              900
              1
            ]

            [
              300
              10
            ]

            [
              60
              1000
            ]
          ];
        };

        "zitadel" = {
          enable = true;
          port = 6383;
          logLevel = "warning";
          databases = 16;
          maxclients = 10000;
          requirePass = lib.hashString "md5" "zitadel";

          settings = {
            stop-writes-on-bgsave-error = "yes";
            rdbcompression = "yes";
            rdbchecksum = "yes";

            maxmemory = "1GB";
            maxmemory-policy = "volatile-lru";
            maxmemory-samples = 3;
          };

          save = [
            [
              900
              1
            ]

            [
              300
              10
            ]

            [
              60
              1000
            ]
          ];
        };

        "traefik" = {
          enable = true;
          port = 6384;
          logLevel = "warning";
          databases = 16;
          maxclients = 10000;
          requirePass = lib.hashString "md5" "traefik";

          settings = {
            stop-writes-on-bgsave-error = "yes";
            rdbcompression = "yes";
            rdbchecksum = "yes";

            maxmemory = "1GB";
            maxmemory-policy = "volatile-lru";
            maxmemory-samples = 3;
          };

          save = [
            [
              900
              1
            ]

            [
              300
              10
            ]

            [
              60
              1000
            ]
          ];
        };

        "loki" = {
          enable = true;
          port = 6385;
          logLevel = "warning";
          databases = 16;
          maxclients = 10000;
          requirePass = lib.hashString "md5" "loki";

          settings = {
            stop-writes-on-bgsave-error = "yes";
            rdbcompression = "yes";
            rdbchecksum = "yes";

            maxmemory = "1GB";
            maxmemory-policy = "allkeys-lru";
            maxmemory-samples = 3;
          };

          save = [
            [
              900
              1
            ]

            [
              300
              10
            ]

            [
              60
              1000
            ]
          ];
        };

        "mimir" = {
          enable = true;
          port = 6386;
          logLevel = "warning";
          databases = 16;
          maxclients = 10000;
          requirePass = lib.hashString "md5" "mimir";

          settings = {
            stop-writes-on-bgsave-error = "yes";
            rdbcompression = "yes";
            rdbchecksum = "yes";

            maxmemory = "1GB";
            maxmemory-policy = "allkeys-lru";
            maxmemory-samples = 3;
          };

          save = [
            [
              900
              1
            ]

            [
              300
              10
            ]

            [
              60
              1000
            ]
          ];
        };
      };
    };
  };
}
