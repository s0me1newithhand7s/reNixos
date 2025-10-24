{...}: {
    disko = {
        devices = {
            lvm_vg = {
                pool = {
                    type = "lvm_vg";
                    lvs = {
                        root = {
                            size = "100%";
                            content = {
                                type = "btrfs";
                                extraArgs = [
                                    "-f"
                                ];

                                subvolumes = {
                                    "/root" = {
                                        mountpoint = "/";
                                        mountOptions = [
                                            "compress=zstd"
                                            "commit=100"
                                            "max_inline=256"
                                            "ssd_spread"
                                            "noatime"
                                        ];
                                    };

                                    "/home" = {
                                        mountpoint = "/home";
                                        mountOptions = [
                                            "compress=zstd"
                                            "max_inline=256"
                                            "commit=100"
                                            "ssd_spread"
                                            "noatime"
                                        ];
                                    };

                                    "/nix" = {
                                        mountpoint = "/nix";
                                        mountOptions = [
                                            "compress=zstd"
                                            "commit=100"
                                            "max_inline=256"
                                            "ssd_spread"
                                            "noatime"
                                        ];
                                    };
                                };
                            };
                        };
                    };
                };
            };
        };
    };
}
