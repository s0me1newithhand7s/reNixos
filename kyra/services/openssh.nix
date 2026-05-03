_: {
  services = {
    openssh = {
      enable = true;
      hostKeys = [
        {
          path = "/etc/ssh/ssh_host_ed25519_key";
          type = "ed25519";
        }
      ];

      settings = {
        PrintMotd = false;
        PermitRootLogin = "no";
        PasswordAuthentication = false;
        MaxAuthTries = 3;
        LoginGraceTime = 10;
        PermitEmptyPasswords = "no";
        ChallengeResponseAuthentication = "no";
        KerberosAuthentication = "no";
        GSSAPIAuthentication = "no";
        X11Forwarding = false;
      };
    };
  };
}
