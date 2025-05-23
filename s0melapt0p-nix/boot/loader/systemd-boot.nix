{lib, ...}: {
    boot = {
        loader = {
            systemd-boot = {
                enable = lib.mkDefault false;
                sortKey = "nixos";
                memtest86 = {
                    enable = true;
                    sortKey = "o_memtest86";
                };

                netbootxyz = {
                    enable = false;
                    sortKey = "o_netbootxyz";
                };
            };
        };
    };
}
