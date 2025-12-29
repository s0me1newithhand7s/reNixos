{...}: {
  services = {
    openssh = {
      enable = true;

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
