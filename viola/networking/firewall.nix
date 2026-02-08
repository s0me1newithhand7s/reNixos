_: {
  networking = {
    firewall = {
      allowPing = true;
      enable = true;
      checkReversePath = false;
      allowedUDPPorts = [
        80
        8080
        8443
        8980
        53350
        53351
        53353

        # mc
        25565

        # mail
        24
        25
        110
        143
        465
        587
        993
        995
        4190
      ];

      allowedTCPPorts = [
        80
        8080
        8443
        8980
        53350
        53351
        53353

        # mc
        25565

        # mail
        24
        25
        110
        143
        465
        587
        993
        995
        4190
      ];
    };
  };
}
