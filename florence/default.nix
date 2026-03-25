{inputs, ...}: {
  imports = [
    "${inputs.nixpkgs}/nixos/modules/installer/netboot/netboot-minimal.nix"
  ];

  services = {
    openssh = {
      enable = true;
      settings = {
        PermitRootLogin = "yes";
      };
    };

    system = {
      stateVersion = "25.05";
    };

    users = {
      users = {
        "root" = {
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
  };
}
