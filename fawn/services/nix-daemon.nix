_: {
  services = {
    nix-daemon = {
      enable = true;
      settings = {
        allowed-users = [
          "root"
          "@wheel"
        ];

        trusted-users = [
          "root"
        ];

        experimental-features = [
          "flakes"
          "nix-command"
        ];
      };
    };
  };
}
