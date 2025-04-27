{lib, ...}: {
    boot = {
        initrd = {
            availableKernelModules = [
                "nvme"
                "xhci_pci"
                "ahci"
                "usbhid"
                "usb_storage"
                "sd_mod"
                "btrfs"
                "cryptd"
            ];

            supportedFilesystems = {
                vfat = true;
                btrfs = true;
                zfs = lib.mkForce true;
            };

            kernelModules = [
                "amdgpu"
            ];

            luks = {
                devices = {
                    cryptroot = {
                        device = "nvme-KINGSTON_SKC3000S_1024G_AA000000000000000013-part2";
                    };
                };
            };

            systemd = {
                enable = true;
            };

            verbose = false;
        };
    };
}
