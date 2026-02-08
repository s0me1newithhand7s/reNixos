{pkgs, ...}: {
  services = {
    postgresql = {
      enable = true;
      enableTCPIP = true;
      checkConfig = true;

      ensureUsers = [
        {
          name = "forgejo";
          ensureDBOwnership = true;
        }

        {
          name = "vaultwarden";
          ensureDBOwnership = true;
        }

        {
          name = "woodpecker";
          ensureDBOwnership = true;
        }

        {
          name = "zitadel";
          ensureDBOwnership = true;
          ensureClauses = {
            login = true;
            superuser = true;
          };
        }

        {
          name = "stalwart";
          ensureDBOwnership = true;
        }
      ];

      ensureDatabases = [
        "vaultwarden"
        "forgejo"
        "woodpecker"
        "stalwart"
        "zitadel"
      ];

      initialScript = ""; # nope
 
      authentication = ""; #nope

      settings = {
        port = ${dbport};
      };
    };
  };
}
