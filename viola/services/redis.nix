{pkgs, ...}: {
  services = {
    redis = {
      package = pkgs.valkey;
      servers = {
        "forgejo" = {
          enable = true;
          port = ${cacheport1};
          logLevel = "warning";
          databases = 16;
          maxclients = 10000;
          requirePass = ${cachepass1};

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

        "woodpecker" = {
          enable = false;
          port = ${cacheport2};
          logLevel = "warning";
          databases = 16;
          maxclients = 10000;
          requirePass = ${cachepass2};

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
          port = ${cacheport3};
          logLevel = "warning";
          databases = 16;
          maxclients = 10000;
          requirePass = ${cachepass3};

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
          port = ${cacheport4};
          logLevel = "warning";
          databases = 16;
          maxclients = 10000;
          requirePass = ${cachepass4};

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
      };
    };
  };
}
