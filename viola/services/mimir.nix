{
  lib,
  pkgs,
  ...
}: {
  services = {
    mimir = {
      enable = true;

      configuration = {
        multitenancy_enabled = false;

        target = "all";
        server = {
          http_listen_port = 9009;
        };

        common = {
          storage = {
            backend = "filesystem";
            filesystem = {
              dir = "/var/lib/mimir";
            };
          };
        };

        blocks_storage = {
          backend = "filesystem";
          filesystem = {
            dir = "/var/lib/mimir/blocks";
          };

          tsdb = {
            dir = "/var/lib/mimir/tsdb";
          };
        };

        compactor = {
          data_dir = "/var/lib/mimir/compactor";
        };

        ingester = {
          ring = {
            instance_addr = "127.0.0.1";
            replication_factor = 1;
            kvstore = {
              store = "memberlist";
            };
          };
        };

        store_gateway = {
          sharding_ring = {
            replication_factor = 1;
          };
        };

        ruler = {
          alertmanager_url = "http://127.0.0.1:9093";
        };

        ruler_storage = {
          backend = "local";
          local = {
            directory = "${pkgs.writeTextDir "anonymous/homelab.yml" (lib.generators.toYAML {} {
              groups = [
                {
                  name = "homelab";
                  interval = "1m";
                  rules = [
                    {
                      alert = "HighDiskUsage";
                      expr = ''
                        (1 - node_btrfs_device_unused_bytes / node_btrfs_device_size_bytes) * 100 > 85
                      '';
                      for = "5m";
                      labels = {severity = "warning";};
                      annotations = {
                        summary = "High disk usage on {{ $labels.instance }}";
                      };
                    }
                    {
                      alert = "HighMemoryUsage";
                      expr = ''
                        (1 - node_memory_MemAvailable_bytes / node_memory_MemTotal_bytes) * 100 > 90
                      '';
                      for = "5m";
                      labels = {severity = "warning";};
                      annotations = {
                        summary = "High memory usage on {{ $labels.instance }}";
                      };
                    }
                    {
                      alert = "HighCpuUsage";
                      expr = ''
                        100 - (avg by (instance) (rate(node_cpu_seconds_total{mode="idle"}[5m])) * 100) > 80
                      '';
                      for = "5m";
                      labels = {severity = "warning";};
                      annotations = {
                        summary = "High CPU usage on {{ $labels.instance }}";
                      };
                    }
                    {
                      alert = "ServiceDown";
                      expr = ''
                        node_systemd_unit_state{state="active"} == 0
                      '';
                      for = "2m";
                      labels = {severity = "critical";};
                      annotations = {
                        summary = "Service {{ $labels.name }} is down on {{ $labels.instance }}";
                      };
                    }
                  ];
                }
              ];
            })}";
          };
        };
      };
    };
  };
}
