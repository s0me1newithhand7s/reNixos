{...}: {
    networking = {
        firewall = {
            interfaces = {
                ens3 = {
                    allowedUDPPorts = [
                        443
                        53590
                        53570
                    ];

                    allowedTCPPorts = [
                        443
                        53590
                        53570
                    ];
                };
            };
        };
    };
}
