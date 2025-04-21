{
    ...
}: {
    services = {
        zerotierone = {
            enable = true;
            joinNetworks = [
                config.sops.secrets.ztNetwork.path
            ];
        };
    };
}
