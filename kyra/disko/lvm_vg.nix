_: {
  disko = {
    devices = {
      lvm_vg = {
        "pool" = {
          type = "lvm_vg";
          lvs = {
            "root" = {
              size = "100%FREE";
              content = {
                type = "btrfs";
                extraArgs = [
                  "-f"
                ];

                subvolumes = {
                  "/nix" = {
                    mountpoint = "/nix";
                    mountOptions = [
                      "compress=zstd"
                      "noatime"
                      "nodev"
                      "nosuid"
                    ];
                  };

                  "/persist" = {
                    mountpoint = "/persist";
                    mountOptions = [
                      "compress=zstd"
                      "noatime"
                      "nodev"
                      "nosuid"
                    ];
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
