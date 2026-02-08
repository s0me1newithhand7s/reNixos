{...}: {
  networking = {
    firewall = {
      allowPing = true;
      enable = true;
      checkReversePath = false;

      interfaces = {
        eno1 = rec {
          allowedTCPPortRanges = [
            {
              from = 1714;
              to = 1764;
            }
          ];

          allowedUDPPortRanges = allowedTCPPortRanges;
        };

        salt-hand7s-pc = rec {
          allowedTCPPorts = [
            6567
          ];

          allowedUDPPorts = allowedTCPPorts;
        };
      };
    };
  };
}
