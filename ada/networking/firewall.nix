_: {
  networking = {
    firewall = {
      allowPing = true;
      enable = false;
      checkReversePath = false;
    };

    nftables = {
      enable = true;
      flattenRulesetFile = true;
    };
  };
}
