_: {
  services = {
    sysklogd = {
      enable = true;
      extraConfig = ''
        user.*                          -/var/log/user.log

        rotate_size  1M
        rotate_count 5
      '';
    };
  };
}
