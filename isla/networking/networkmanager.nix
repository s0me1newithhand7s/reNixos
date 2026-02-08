{...}: {
  networking = {
    networkmanager = {
      enable = true;
      dns = "default";
      dhcp = "internal";
      wifi = {
        backend = "iwd";
        macAddress = "preserve";
      };
    };
  };
}
