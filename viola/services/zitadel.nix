{config, ...}: {
  services = {
    zitadel = {
      enable = true;
      tlsMode = "external";
      masterKeyFile = config.sops.secrets.zitadelMasterKey;

      steps = {
        FirstInstance = {
          InstanceName = "zitadel.hand7s.org";
          DefaultLanguage = "en";
          LoginPolicy = {
            AllowRegister = false;
          };

          Org = {
            Name = "ZITADEL";
            Human = {
              UserName = "admin";
              FirstName = "Bogdan";
              LastName = "Litvinov";
              DisplayName = "hand7s";
              PasswordChangeRequired = true;
              PreferredLanguage = "en";

              Email = {
                Address = "me@hand7s.org";
                Verified = true;
              };
            };
          };
        };
      };

      settings = {
        Port = 8443;
        ExternalPort = 8443;
        ExternalDomain = "zitadel.hand7s.org";
        ExternalSecure = true;

        Log = {
          Level = "debug";
        };

        Telemetry = {
          Enabled = false;
        };

        Database = {
          postgres = {
            Host = "${dbhost}";
            Port = "${dbport}";
            Database = "zitadel";
            User = {
              Username = "zitadel";
              SSL = {
                Mode = "disable";
              };
            };
          };
        };

        Caches = {
          Connectors = {
            Redis = {
              Enabled = true;
              Addr = "${cahceaddress}";
              Password = "${cahcepass}";
              PoolSize = "900";
              PoolTimeout = "1800s";
            };
          };
        };
      };
    };
  };
}
