_: {
  services = {
    firewalld = {
      enable = true;

      settings = {
        IPv6_rpfilter = "strict";
        CleanupModulesOnExit = true;
        StrictForwardPorts = true;
        logDenied = "off";
        FlushAllOnReload = "yes";
        ReloadPolicy = "DROP";
        RFC3964_IPv4 = "yes";
        NftablesCounters = "no";
        NftablesTableOwner = "yes";
        IndividualCalls = "no";
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
