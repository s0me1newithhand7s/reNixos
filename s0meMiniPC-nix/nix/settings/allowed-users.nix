{...}: {
  nix = {
    settings = {
      sandbox = true;
      allowed-users = [
        "@wheel"
      ];
    };
  };
}
