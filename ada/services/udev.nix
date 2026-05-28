{pkgs, ...}: {
  services = {
    udev = {
      packages = [
        pkgs.yubikey-personalization
      ];

      extraRules = ''
        SUBSYSTEM=="cpu", ACTION=="add", ATTR{cpufreq/scaling_governor}="performance"
        SUBSYSTEM=="cpu", ACTION=="add", ATTR{cpufreq/energy_performance_preference}="performance"
      '';
    };
  };
}
