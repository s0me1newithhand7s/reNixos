_: {
  services = {
    prometheus = {
      alertmanager = {
        enable = true;
        configuration = {
          route = {
            receiver = "null";
            group_by = [
              "alertname"
              "job"
            ];

            group_wait = "30s";
            group_interval = "5m";
            repeat_interval = "12h";
          };
          receivers = [
            {
              name = "null";
            }
          ];
        };
      };
    };
  };
}
