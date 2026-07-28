{inputs, ...}: {
  hjem = {
    clobberByDefault = true;

    extraModules = [
      inputs."hjem-rum".hjemModules."default"
    ];

    users = {
      "hand7s" = {
        enable = true;
        user = "hand7s";
        directory = "/home/hand7s";
      };
    };
  };
}
