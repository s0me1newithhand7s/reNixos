{
  pkgs,
  lib,
  ...
}: {
  services = {
    loki = {
      enable = true;

      configuration = {
        auth_enabled = false;
        server = {
          http_listen_port = 3100;
          grpc_listen_port = 9097;
        };

        common = {
          replication_factor = 1;
          path_prefix = "/var/lib/loki";
          ring = {
            instance_addr = "127.0.0.1";
            kvstore = {
              store = "inmemory";
            };
          };
        };

        schema_config = {
          configs = [
            {
              from = "2025-01-01";
              store = "tsdb";
              object_store = "filesystem";
              schema = "v13";
              index = {
                prefix = "index_";
                period = "24h";
              };
            }
          ];
        };

        storage_config = {
          filesystem = {
            directory = "/var/lib/loki/chunks";
          };
        };

        chunk_store_config = {
          chunk_cache_config = {
            redis = {
              endpoint = "127.0.0.1:6385";
              password = "loki";
              db = 0;
              timeout = "500ms";
              expiration = "24h";
            };
          };
        };

        compactor = {
          working_directory = "/var/lib/loki/compactor";
          retention_enabled = true;
          delete_request_store = "filesystem";
        };

        limits_config = {
          reject_old_samples = true;
          reject_old_samples_max_age = "168h";
          retention_period = "720h";
        };

        query_range = {
          cache_results = true;
          results_cache = {
            cache = {
              redis = {
                endpoint = "127.0.0.1:6385";
                password = "loki";
                db = 0;
                timeout = "500ms";
                expiration = "1h";
              };
            };
          };
        };

        ruler = {
          enable_api = true;
          alertmanager_url = "http://127.0.0.1:9093";
          storage = {
            type = "local";
            local = {
              directory = "${pkgs.writeTextDir "fake/homelab.yaml" (lib.generators.toYAML {} {
                groups = [
                  {
                    name = "homelab";
                    interval = "1m";
                    rules = [
                      {
                        alert = "HostDown";
                        expr = ''absent_over_time({host="viola"}[10m])'';
                        for = "10m";
                        labels = {severity = "critical";};
                        annotations = {
                          summary = "Host viola not sending logs";
                        };
                      }
                      {
                        alert = "OOMKiller";
                        expr = ''count_over_time({host="viola"} |= "Out of memory: Killed process" [5m]) > 0'';
                        labels = {severity = "warning";};
                        annotations = {
                          summary = "OOM killer fired on viola";
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
  };
}
