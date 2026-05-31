{name, ...}: {
  disko = {
    devices = {
      disk = {
        "virt_main" = {
          device =
            {
              "yara" = "/dev/vda";
            }.${
              name
            } or "/dev/sda";
          type = "disk";
          content = {
            type = "gpt";
            partitions = {
              boot = {
                name = "boot";
                size = "1M";
                type = "EF02";
              };

              ESP = {
                name = "ESP";
                size = "128M";
                type = "EF00";
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
                  name = "crypted";
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
