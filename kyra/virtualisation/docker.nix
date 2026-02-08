_: {
  virtualisation = {
    oci-containers = {
      backend = "docker";
    };

    docker = {
      enable = true;
      rootless = {
        enable = true;
      };
    };
  };
}
