_: {
  users = {
    users = {
      "hand7s" = {
        description = "hands";
        isNormalUser = true;
        hashedPassword = "$y$j9T$eHfq328GBp7Ga8xsbOTV/0$kcihv7zWLqSkj2jKAhI1pdbTSwvaf2RY5Rokm69XTL/";
        extraGroups = [
          "wheel"
          "docker"
        ];

        openssh = {
          authorizedKeys = {
            keys = [
              "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIDp2IIdR5jV1HyG4aiRX7SfTNrXDhCx5rTiFU40qkOKq litvinovb0@gmail.com"
            ];
          };
        };
      };
    };
  };
}
