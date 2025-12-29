{
  disko = {
    devices = {
      disk = {
        virt_main = {
          device = "/dev/sda";
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
                size = "1024M";
                type = "EF00";
                content = {
                  type = "filesystem";
                  format = "vfat";
                  mountpoint = "/boot";
                  mountOptions = [
                    "umask=0077"
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
