{...}: {
    users = {
        users = {
            hand7s = {
                description = "me";
                isSystemUser = false;
                isNormalUser = true;
                initialHashedPassword = "$6$ckgRhNWmJgSwOUpJ$kfeAdokd5fa76HWbTmWN2YXx4M/PQVOTJku1ODbqbBhEkUFiLftdaJFRnNXfIM3Jtz0ShoRMSVCB7mDkxDrdi/";
                extraGroups = [
                    "wheel"
                    "networkmanager"
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
