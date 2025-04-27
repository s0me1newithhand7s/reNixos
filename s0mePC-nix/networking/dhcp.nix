{lib, ...}: {
    networking = {
        useDHCP = lib.mkDefault true;
        dhcpcd = {
            enable = true;
            persistent = false;
            wait = "any";
        };
    };
}
