_: {
  services = {
    logrotate = {
      enable = true;
      rules = {
        system-messages = {
          enable = true;

          text = ''
            /var/log/messages /var/log/secure /var/log/auth.log {
              weekly
              rotate 4
              missingok
              compress
              notifempty
              sharedscripts
            }
          '';
        };
      };
    };
  };
}
