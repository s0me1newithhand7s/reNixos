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
        "cryptd"
        "tpm"
        "hid_generic"
      ];

      supportedFilesystems = {
        bcachefs = true;
        vfat = true;
        btrfs = true;
      };

      kernelModules = [
        "amdgpu"
        "i2c-dev"
      ];

      luks = {
        devices = {
          cryptroot = {
            device = "/dev/disk/by-id/nvme-KINGSTON_SKC3000S_1024G_AA000000000000000013-part2";
            crypttabExtraOpts = [
              "fido2-device=auto"
              "fido2-pin=true"
              "tpm2-device=auto"
              "tpm2-pin=true"
              # "headless=true"
            ];
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
