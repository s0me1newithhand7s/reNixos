{config, ...}: {
  services = {
    yggdrasil = {
      enable = true;
      persistentKeys = false;
      settings = {
        PrivateKey = config.sops.secrets.yggKeyLT.path;

        Peers = [
          # only 1W+ peers (some exeptions are possible)

          # Russia
          "tls://yggno.de:18227"
          "tcp://yggno.de:18226"

          "tcp://kzn1.neonxp.ru:7991"
          "tls://kzn1.neonxp.ru:7992"
          "ws://kzn1.neonxp.ru:7993"
          "quic://kzn1.neonxp.ru:7994"
        ];

        Listen = [
          #
        ];

        MulticastInterfaces = [
          {
            Regex = ".*";
            Beacon = true;
            Listen = false;
            Password = "";
          }
        ];

        AllowedPublicKeys = [
          #
        ];

        IfName = "auto";

        IfMTU = 65535;
        NodeInfoPrivacy = false;
      };
    };
  };
}
