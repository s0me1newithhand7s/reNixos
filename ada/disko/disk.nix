{
  disko = {
    devices = {
      disk = {
        "main" = {
          device = "/dev/disk/by-id/nvme-KINGSTON_SKC3000S_1024G_AA000000000000000013";
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
                    "fmask=0077"
                    "nosuid"
                    "nodev"
                    "rw"
                  ];
                };
              };

              luks = {
                size = "100%";
                content = {
                  type = "luks";
                  name = "lvm-crypted";
                  settings = {
                    allowDiscards = true;
                  };

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
  };
}
