{...}: {
    boot = {
        lanzaboote = {
            enable = false;
            configurationLimit = 7;
            pkiBundle = "/var/lib/sbctl";
            settings = {
                timeout = 2;
                sortKey = "lanza";
            };
        };
    };
}
