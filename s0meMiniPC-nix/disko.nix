{
    disko = {
        devices = {
            disk = {
                main = {
                    device = "/dev/disk/by-id/ata-EAGET_SSD_256GB_EAGET20250505V00003";
                    type = "disk";
                    content = {
                        type = "gpt";
                        partitions = {
                            ESP = {
                                type = "EF00";
                                size = "1024M";
                                name = "boot";
                                content = {
                                    type = "filesystem";
                                    format = "vfat";
                                    mountpoint = "/boot";
                                    mountOptions = [
                                        "fmask=0022"
                                        "dmask=0022"
                                    ];
                                };
                            };

                            root = {
                                size = "100%";
                                content = {
                                    type = "lvm_pv";
                                    vg = "pool";
                                };
                            };
                        };
                    };
                };
            };

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
                                            "noatime"
                                            "discard=async"
                                        ];
                                    };

                                    "/home" = {
                                        mountpoint = "/home";
                                        mountOptions = [
                                            "compress=zstd"
                                            "noatime"
                                            "discard=async"
                                        ];
                                    };

                                    "/nix" = {
                                        mountpoint = "/nix";
                                        mountOptions = [
                                            "compress=zstd"
                                            "noatime"
                                            "discard=async"
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
