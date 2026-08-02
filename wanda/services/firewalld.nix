_: {
  services = {
    firewalld = {
      enable = true;

      settings = {
        IPv6_rpfilter = "loose";
        CleanupModulesOnExit = true;
        FlushAllOnReload = true;
        RFC3964_IPv4 = true;
        NftablesCounters = false;
        IndividualCalls = false;
      };
    };
  };
}
