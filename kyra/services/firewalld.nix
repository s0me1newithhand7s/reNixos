{
  name,
  lib,
  ...
}: {
  services = {
    firewalld = {
      enable = true;

      services = {
        "ssh" = {
          short = "openssh";
          ports = [
            {
              port = 60009;
              protocol = "tcp";
            }
          ];
        };

        "stalwart" = {
          short = "Stalwart-mail";
          ports =
            lib.forEach [
              25
              110
              143
              465
              993
              995
              4190
            ] (
              port: {
                protocol = "tcp";
                inherit
                  port
                  ;
              }
            );
        };

        "consul" = {
          short = "Consul";
          ports =
            lib.forEach [
              8300
              8301
              8302
              8500
              8600
            ] (
              port: {
                protocol = "tcp";
                inherit
                  port
                  ;
              }
            )
            ++ lib.forEach [
              8301
              8302
              8600
            ] (
              port: {
                protocol = "udp";
                inherit
                  port
                  ;
              }
            );
        };
      };

      zones = {
        "trusted" = {
          services = [
            "consul"
          ];
        };

        "wan" = {
          ports = [
            {
              port = 2053;
              protocol = "udp";
            }

            {
              port = 8443;
              protocol = "tcp";
            }

            {
              port = 51820;
              protocol = "udp";
            }
          ];

          icmpBlockInversion = true;
          icmpBlocks = [
            "echo-request"
            "destination-unreachable"
            "parameter-problem"
            "time-exceeded"
          ];

          interfaces = lib.concatLists [
            (
              lib.optionals (
                lib.elem name [
                  "hazel"
                  "lynn"
                  "yara"
                  "ivy"
                ]
              ) [
                "ens3"
              ]
            )

            (
              lib.optionals (
                name == "mel"
              ) [
                "eth0"
              ]
            )
          ];

          services = lib.concatLists [
            [
              "ssh"
              "http"
              "https"
            ]

            (
              lib.optionals (
                lib.elem name [
                  "hazel"
                  "lynn"
                  "mel"
                ]
              ) [
                "minecraft"
                "stalwart"
              ]
            )
          ];
        };
      };
    };
  };
}
