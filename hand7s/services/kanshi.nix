_: {
  services = {
    kanshi = {
      enable = true;
      systemdTarget = "hyprland-session.target";
      profiles = {
        "default" = {
          outputs = [
            {
              criteria = "Shenzhen KTC Technology Group AQ27H3 0x00000001";
              mode = "2560x1440@165Hz";
              position = "0,0";
              adaptiveSync = true;
            }
          ];
        };
      };
    };
  };
}
