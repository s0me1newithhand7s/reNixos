{
  disko = {
    devices = {
      disk = {
        "main" = {
          device = "/dev/disk/by-id/ata-EAGET_SSD_256GB_EAGET20250505V00003";
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
                    "dmask=0077"
                    "fmask=0177"
                    "noexec"
                    "nosuid"
                    "nodev"
                    "rw"
                  ];
                };
              };

              root = {
                size = "100%";
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
  };
}
