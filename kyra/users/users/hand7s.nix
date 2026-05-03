_: {
  users = {
    users = {
      "hand7s" = {
        description = "hands";
        isNormalUser = true;
        extraGroups = [
          "wheel"
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
