{pkgs, ...}: {
    services = {
        yubikey-agent = {
            package = pkgs.yubikey-agent;
            enable = false;
        };
    };
}
