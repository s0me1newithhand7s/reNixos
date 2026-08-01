_: {
  fileSystems = {
    "/boot" = {
      device = "/dev/disk/by-partlabel/boot";
      fsType = "vfat";
      options = [
        "dmask=0077"
        "fmask=0077"
        "noexec"
        "nosuid"
        "nodev"
        "rw"
      ];
    };

    "/" = {
      device = "/dev/disk/by-partlabel/root";
      fsType = "btrfs";
      options = [
        "compress=zstd:3"
        "noatime"
        "discard=async"
        "subvol=/root"
      ];
    };

    "/home" = {
      device = "/dev/disk/by-partlabel/root";
      fsType = "btrfs";
      options = [
        "compress=zstd:3"
        "noatime"
        "discard=async"
        "subvol=/home"
        "nosuid"
        "nodev"
      ];
    };

    "/nix" = {
      device = "/dev/disk/by-partlabel/root";
      fsType = "btrfs";
      options = [
        "compress=zstd:3"
        "noatime"
        "discard=async"
        "subvol=/nix"
      ];
    };
  };
}
