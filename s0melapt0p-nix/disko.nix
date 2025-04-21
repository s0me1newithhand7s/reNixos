{
    disko = {
        devices = {
            disk = {
                main = {
                    device = "/dev/disk/by-id/ata-CT480BX500SSD1_1935E1973FA4";
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

                            luks = {
                                size = "100%";
                                content = {
                                    type = "luks";
                                    name = "lvm-crypted";
                                    settings = {
                                        allowDiscards = true;
                                    };
                                    
                                    content = {
                                        type = "lvm_pv";
                                        vg = "pool";
                                    };
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
