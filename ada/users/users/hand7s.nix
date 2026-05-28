{lib, ...}: {
  users = {
    users = {
      "hand7s" = {
        description = "me";
        isSystemUser = false;
        isNormalUser = true;
        initialHashedPassword = lib.hashString "sha512" "hand7s";
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
