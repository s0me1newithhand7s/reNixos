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
      ];

      supportedFilesystems = {
        vfat = true;
        btrfs = true;
        zfs = lib.mkForce true;
      };

      systemd = {
        enable = true;
      };

      verbose = false;
    };
  };
}
