{
    lib,
    ...
}: {
    boot = {
        
        initrd = {
            availableKernelModules = [ 
                "ehci_pci"
                "ahci" 
                "usbhid" 
                "usb_storage" 
                "sd_mod"
                "sdhci_pci"
                "btrfs"
                "battery" 
                "thinkpad_acpi"
                "cryptd"
            ];

            supportedFilesystems = {
                vfat = true;
                btrfs = true;
                zfs = lib.mkForce false;
            };

            kernelModules = [
                "i915"
            ];

            luks = {
                devices = {
                    cryptroot = {
                        device = "/dev/disk/by-id/ata-ST92503010AS_5YH0CJFL-part2";
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