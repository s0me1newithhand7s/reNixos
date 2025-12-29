{...}: {
  networking = {
    interfaces = {
      ens3 = {
        ipv6 = {
          addresses = [
            {
              address = "";
              prefixLength = 128;
            }
          ];
        };
      };
    };
  };
}
