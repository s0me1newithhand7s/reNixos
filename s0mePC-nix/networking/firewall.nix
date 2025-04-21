{
    ...
}: {
    networking = {
        firewall = {
            allowPing = true;
            enable = true;
            checkReversePath = false;
            allowedUDPPorts = [
                9993
                2080
            ];
            
            allowedTCPPorts = [
                9993
                2080
            ];
        };
    };
}
