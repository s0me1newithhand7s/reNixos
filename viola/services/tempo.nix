_: {
  services = {
    tempo = {
      enable = true;

      settings = {
        server = {
          http_listen_port = 3200;
          grpc_listen_port = 9096;
        };

        distributor = {
          receivers = {
            otlp = {
              protocols = {
                grpc = {
                  endpoint = "0.0.0.0:4317";
                };

                http = {
                  endpoint = "0.0.0.0:4318";
                };
              };
            };
          };
        };

        ingester = {
          lifecycler = {
            ring = {
              replication_factor = 1;
            };
          };
        };

        storage = {
          trace = {
            backend = "local";
            local = {
              path = "/var/lib/tempo/blocks";
            };

            block = {
              version = "vParquet4";
            };

            wal = {
              path = "/var/lib/tempo/wal";
            };
          };
        };

        compactor = {
          compaction = {
            block_retention = "720h";
          };
        };

        metrics_generator = {
          registry = {
            external_labels = {
              source = "tempo";
            };
          };

          storage = {
            path = "/var/lib/tempo/generator";
            remote_write = [
              {
                url = "http://127.0.0.1:9009/api/v1/push";
              }
            ];
          };
        };

        overrides = {
          defaults = {
            metrics_generator = {
              processors = [
                "service-graphs"
                "span-metrics"
                "local-blocks"
              ];
            };
          };
        };
      };
    };
  };
}
