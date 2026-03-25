{pkgs, ...}: {
  services = {
    alloy = {
      enable = true;
      configPath = pkgs.writeText "alloy-config.alloy" ''
        loki.source.journal "system" {
          forward_to = [loki.process.production.receiver]
          relabel_rules = loki.relabel.journal.rules
          labels = {
            host = "viola",
            job  = "systemd",
          }
        }

        loki.relabel "journal" {
          forward_to = []
          rule {
            source_labels = ["__journal__systemd_unit"]
            target_label  = "unit"
          }
        }

        loki.write "local" {
          endpoint {
            url = "http://127.0.0.1:3100/loki/api/v1/push"
          }
        }

        loki.process "production" {
          forward_to = [loki.write.local.receiver]

          stage.match {
            selector = `{service_name=~"(alloy|forgejo|grafana|loki|microbin|mimir|stalwart|postgresql|redis|stalwart|static-web-server|tempo|traefik|vaultwarden|woodpecker|zitadel)\\.service"}`
            action = "keep"
          }
        }

        prometheus.exporter.unix "node" {
          enable_collectors = [
            "cpu", "diskstats", "filesystem",
            "loadavg", "meminfo", "netdev",
            "systemd", "time", "uname",
          ]
        }

        prometheus.scrape "node" {
          targets = prometheus.exporter.unix.node.targets
          forward_to = [prometheus.remote_write.mimir.receiver]
          scrape_interval = "30s"
          job_name = "node"
        }

        prometheus.scrape "alloy" {
          targets = [{"__address__" = "127.0.0.1:12345"}]

          forward_to = [prometheus.remote_write.mimir.receiver]
          job_name   = "alloy"
        }

        prometheus.remote_write "mimir" {
          endpoint {
            url = "http://127.0.0.1:9009/api/v1/push"
          }
        }

        otelcol.receiver.otlp "default" {
          grpc {
            endpoint = "0.0.0.0:4317"
          }

          http {
            endpoint = "0.0.0.0:4318"
          }

          output {
            traces = [otelcol.exporter.otlp.tempo.input]
            logs   = [otelcol.exporter.loki.local.input]
          }
        }

        otelcol.exporter.otlp "tempo" {
          client {
            endpoint = "http://127.0.0.1:4317"
          }
        }

        otelcol.exporter.loki "local" {
          forward_to = [loki.write.local.receiver]
        }
      '';
    };
  };
}
