{
    ...
}: {
    services = {
        yggdrasil = {
            enable = true;
            persistentKeys = false;
            settings = {
                PrivateKey = config.sops.secrets.yggKeyPc.path;

                Peers = [

                    # Germany :Erm:
                    "tcp://s-fra-0.sergeysedoy97.ru:65533"
                    "tls://s-fra-0.sergeysedoy97.ru:65534"
                    "tcp://x-fra-0.sergeysedoy97.ru:65533"
                    "tls://x-fra-0.sergeysedoy97.ru:65534"
                    "quic://x-fra-0.sergeysedoy97.ru:65535"
                    "tls://helium.avevad.com:13378"
                    "tcp://bode.theender.net:42069"
                    "tls://bode.theender.net:42169?key=f91b909f43829f8b20732b3bcf80cbc4bb078dd47b41638379a078e35984c9a4"

                    # Russia
                    "tcp://s-mow-0.sergeysedoy97.ru:65533"
                    "tls://s-mow-0.sergeysedoy97.ru:65534"
                    "tcp://x-mow-0.sergeysedoy97.ru:65533"
                    "tls://x-mow-0.sergeysedoy97.ru:65534"
                    "quic://x-mow-0.sergeysedoy97.ru:65535"
                    "tcp://s-mow-1.sergeysedoy97.ru:65533"
                    "tls://s-mow-1.sergeysedoy97.ru:65534"
                    "tcp://x-mow-1.sergeysedoy97.ru:65533"
                    "tls://x-mow-1.sergeysedoy97.ru:65534"
                    "quic://x-mow-1.sergeysedoy97.ru:65535"
                    "quic://kursk.cleverfox.org:15015"
                    "tls://kursk.cleverfox.org:15015"
                    "ws://kursk.cleverfox.org:15016"
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
