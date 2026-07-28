{config, ...}: {
  users = {
    users = {
      "hand7s" = {
        description = "me";
        isNormalUser = true;
        password = "pass"; # 100% change in system
        extraGroups = [
          config.services.seatd.group
          "audio"
          "input"
          "video"
          "wheel"
          "tty"
        ];
      };
    };
  };
}
