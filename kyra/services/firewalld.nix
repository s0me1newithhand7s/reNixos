{
  name,
  lib,
  ...
}: {
  services = {
    firewalld = {
      enable = true;

      settings = {
        IPv6_rpfilter = "strict";
        CleanupModulesOnExit = true;
        StrictForwardPorts = true;
      };

      services = {
        "ntp" = {
          short = "ntpd-rs";
          ports = [
            {
              port = 123;
              protocol = "udp";
            }

            {
              port = 4460;
              protocol = "tcp";
            }
          ];
        };

        "dns" = {
          short = "hickory-dns";
          ports = [
            {
              port = 853;
              protocol = "tcp";
            }
          ];
        };

        "quic" = {
          short = "http3";
          ports = [
            {
              port = 443;
              protocol = "udp";
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
        "netbird" = {
          services = [
            "ssh"
            "consul"
          ];
        };

        "wan" = {
          target = "DROP";

          masquerade = true;

          forwardPorts = [
            {
              port = 443;
              protocol = "udp";
              to-port = 8443;
              to-addr = "192.168.101.2";
            }
          ];

          ports = [
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
              "quic"
              "http"
              "https"
              "ntp"
              "dns"
            ]

            (
              lib.optionals (
                lib.elem name [
                  "hazel"
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
