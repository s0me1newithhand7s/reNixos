{pkgs, ...}: {
  services = {
    chrony = {
      enable = true;
      configFile = pkgs.writeText "chrony.conf" ''
        server 162.159.200.1 iburst ipv4
        server 2606:4700:f1::1 iburst ipv6

        server time.cloudflare.com iburst nts ipv4
        server time.cloudflare.com iburst nts ipv6

        driftfile /var/lib/chrony/drift
        makestep 1.0 3
        rtcsync
      '';
    };
  };
}
