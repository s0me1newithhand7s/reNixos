_: {
  programs = {
    resolvconf = {
      enable = true;
      settings = {
        name_servers = "127.0.0.1 ::1";
      };
    };
  };
}
