_: {
  services = {
    vaultwarden = {
      enable = true;
      dbBackend = "postgresql";
      config = {
        # holy private thing
        # im NOT sharing it here
      };
    };
  };
}
