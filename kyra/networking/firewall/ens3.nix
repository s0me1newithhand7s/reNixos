{
  config,
  lib,
  ...
}: {
  networking = {
    firewall = {
      interfaces = {
        ens3 = {
          allowedUDPPorts =
            [
              53580
              53590
            ]
            ++ lib.optionals (config.networking.hostName == "hazel") [
              443

              25565

              24
              25
              110
              143
              465
              587
              993
              995
              4190
              53570
            ];

          allowedTCPPorts =
            [
              53580
              53590
            ]
            ++ lib.optionals (config.networking.hostName == "hazel") [
              443

              25565

              24
              25
              110
              143
              465
              587
              993
              995
              4190
              53570
            ];
        };
      };
    };
  };
}
