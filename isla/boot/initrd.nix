_: {
  boot = {
    initrd = {
      compressor = "zstd";
      compressorArgs = [
        "-22"
        "--ultra"
        "-T8"
      ];

      includeDefaultModules = false;

      kernelModules = [
        "af_packet"
        "amdgpu"
        "btrfs"
        "dm-snapshot"
        "dm_mod"
        "hid_generic"
        "nls_cp437"
        "nls_iso8859-1"
        "nvme"
        "r8169"
        "tpm_crb"
        "tpm_tis"
        "usbhid"
        "vfat"
        "xhci_pci"
      ];

      supportedFilesystems = {
        vfat = true;
        btrfs = true;
      };

      systemd = {
        network = {
          enable = true;
        };
      };

      verbose = false;
    };
  };
}
