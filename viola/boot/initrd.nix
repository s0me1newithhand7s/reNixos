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
      ];

      supportedFilesystems = {
        vfat = true;
        btrfs = true;
      };

      systemd = {
        enable = true;
      };

      verbose = false;
    };
  };
}
