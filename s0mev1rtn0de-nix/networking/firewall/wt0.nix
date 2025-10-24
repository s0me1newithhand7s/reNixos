{...}: {
    networking = {
        firewall = {
            interfaces = {
                wt0 = {
                    allowedUDPPorts = [
                        39856
                    ];

                    allowedTCPPorts = [
                        39856
                    ];
                };
            };
        };
    };
}
