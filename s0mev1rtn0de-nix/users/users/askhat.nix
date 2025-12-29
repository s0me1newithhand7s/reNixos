{...}: {
  users = {
    users = {
      askhat = {
        description = "askhat";
        isNormalUser = true;
        hashedPassword = "$y$j9T$t3G0Vj47wHY86twX2bfwr/$kUajwW8gxtu09z9btWBB7YNEcj1Ut3QfYEazWr7utgC";
        extraGroups = [
          "wheel"
          "docker"
        ];

        openssh = {
          authorizedKeys = {
            keys = [
              "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAICfdXRE2ckx++O1lHFcmZlBMN1Sgy3aqSadOdC+ZOLj5 kixoncon33@gmail.com"
            ];
          };
        };
      };
    };
  };
}
