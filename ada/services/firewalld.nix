_: {
  services = {
    firewalld = {
      enable = true;

      settings = {
        IPv6_rpfilter = "strict";
        CleanupModulesOnExit = true;
        StrictForwardPorts = true;
        logDenied = "off";
        FlushAllOnReload = true;
        ReloadPolicy = "DROP";
        RFC3964_IPv4 = true;
        NftablesCounters = false;
        NftablesTableOwner = true;
        IndividualCalls = false;
      };

      zones = {
        "wan" = {
          interfaces = [
            "ens1"
          ];

          services = [
            "sunshine"
          ];
        };
      };
    };
  };
}
