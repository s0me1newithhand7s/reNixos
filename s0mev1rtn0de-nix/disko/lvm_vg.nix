{
    disko = {
        devices = {
            lvm_vg = {
                pool = {
                    type = "lvm_vg";
                    lvs = {
                        root = {
                            size = "100%FREE";
                            content = {
                                type = "btrfs";
                                mountpoint = "/";
                                extraArgs = [
                                    "-f"
                                ];

                                mountOptions = [
                                    "compress=zstd"
                                ];
                            };
                        };
                    };
                };
            };
        };
    };
}
