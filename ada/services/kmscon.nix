_: {
  services = {
    kmscon = {
      enable = true;
      useXkbConfig = true;
      config = {
        hwaccel = true;
        term = "xterm-256color";
      };
    };
  };
}
