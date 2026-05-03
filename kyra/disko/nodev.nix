_: {
  disko = {
    devices = {
      nodev = {
        "/" = {
          fsType = "tmpfs";
          mountOptions = [
            "size=1G"
            "mode=755"
            "nodev"
            "nosuid"
            "rw"
          ];
        };
      };
    };
  };
}
