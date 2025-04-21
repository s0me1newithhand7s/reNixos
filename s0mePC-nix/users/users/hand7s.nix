{ 
    ... 
}: {
    users = { 
        users = {
            hand7s = {
                description = "me";
                isSystemUser = false;
                isNormalUser = true;
                initialHashedPassword = "$6$vNggR38kZoLNZglM$QM5Qc8Ck1ko9YgME4RpV7KGLb1.UBynKmmWwABDI1GrMl54my7r7sXHiQ3VgqpMwaUtHeifJh5Zv.QR8lGXd50";
                extraGroups = [ 
                    "wheel"
                    "networkmanager"
                    "docker"
                    "openrazer"
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
