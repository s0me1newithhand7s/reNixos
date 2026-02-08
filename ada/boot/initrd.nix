_: {
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
        "amneziawg"
        "cryptd"
      ];

      supportedFilesystems = {
        ntfs = true;
        vfat = true;
        btrfs = true;
      };

      kernelModules = [
        "amdgpu"
        "zenpower"
        "amneziawg"
      ];

      luks = {
        devices = {
          cryptroot = {
            device = "/dev/disk/by-id/nvme-KINGSTON_SKC3000S_1024G_AA000000000000000013-part2";
          };
        };
      };

      systemd = {
        enable = true;
        network = {
          enable = true;
        };
      };

      verbose = false;
    };
  };
}
