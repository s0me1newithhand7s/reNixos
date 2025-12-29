{
  config,
  pkgs,
  lib,
  ...
}: {
  networking = {
    wg-quick = {
      interfaces = {
        wg0 = {
          type = "wireguard";
          listenPort = 53590;
          privateKeyFile = config.sops.secrets.privateWgKey;

          address = [
            "10.100.0.1/24"
          ];

          postUp = ''
            ${lib.getExe' pkgs.iptables "iptables"} -A FORWARD -i wg0 -j ACCEPT
            ${lib.getExe' pkgs.iptables "iptables"} -t nat -A POSTROUTING -s 10.100.0.0/24 -o ens3 -j MASQUERADE
          '';

          preDown = ''
            ${lib.getExe' pkgs.iptables "iptables"} -D FORWARD -i wg0 -j ACCEPT
             ${lib.getExe' pkgs.iptables "iptables"} -t nat -D POSTROUTING -s 10.100.0.0/24 -o ens3 -j MASQUERADE
          '';

          peers = [
            {
              publicKey = "{}";
              presharedKeyFile = config.sops.secrets.presharedWgKey1;
              allowedIPs = [
                "10.100.0.2/32"
              ];
            }

            {
              publicKey = "{}";
              presharedKeyFile = config.sops.secrets.presharedWgKey2;
              allowedIPs = [
                "10.100.0.3/32"
              ];
            }
          ];
        };
      };
    };
  };
}
