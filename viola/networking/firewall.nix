{...}: {
  networking = {
    firewall = {
      allowPing = true;
      enable = true;
      checkReversePath = false;
      allowedUDPPorts = [
        80
        8080
        8443
        53350
        53351
        53353
      ];

      allowedTCPPorts = [
        80
        8080
        8443
        53350
        53351
        53353
      ];
    };
  };
}
