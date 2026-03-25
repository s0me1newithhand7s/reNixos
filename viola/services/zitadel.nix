{config, ...}: {
  services = {
    zitadel = {
      enable = true;
      tlsMode = "external";

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
                Address = "admin@hand7s.org";
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

        Machine = {
          MachineID = {
            Type = "static";
            Static = {
              MachineID = 1;
            };
          };
        };

        Log = {
          Level = "info";
        };

        Telemetry = {
          Enabled = false;
        };

        Database = {
          postgres = {
            Host = "localhost";
          };
        };

        Caches = {
          Connectors = {
            Redis = {
              Enabled = true;
              Addr = "localhost:6383";
              Password = config.services.stalwart-mail.settings.requirePass;
              PoolSize = "900";
              PoolTimeout = "1800s";
            };
          };
        };
      };
    };
  };
}
