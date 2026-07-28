_: {
  boot = {
    initrd = {
      compressorArgs = [
        "-22"
        "--ultra"
        "-T8"
      ];

      supportedFilesystems = {
        btrfs = {
          enable = true;
        };

        vfat = {
          enable = true;
        };
      };
    };
  };
}
