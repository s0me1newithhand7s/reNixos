_: {
  services = {
    hyprsunset = {
      enable = true;
      settings = {
        max-gamma = 150;

        profile = [
          {
            time = "6:00";
            identity = true;
          }

          {
            time = "22:00";
            temperature = 4000;
            gamma = 1.1;
          }
        ];
      };
    };
  };
}
