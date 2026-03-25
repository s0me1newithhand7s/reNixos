{
  config,
  pkgs,
  ...
}: {
  services = {
    alloy = {
      enable = true;

      configPath = pkgs.writeText "alloy-config.alloy" ''
        loki.source.journal "system" {
          max_age = "24h"
          forward_to = [loki.process.production.receiver]

          labels = {
            host = "${config.networking.hostName}",
            job  = "journalctl",
          }
        }

        loki.process "production" {
          forward_to = [loki.write.viola.receiver]

          stage.labels {
            values = {
              unit = "__journal_systemd_unit__",
            }
          }

          stage.label_keep {
            values = ["unit"]
          }

          stage.match {
            selector = `{unit=~"(traefik|sing-box|crowdsec|alloy|netbird).*\\.service"}`
            action   = "drop"
          }
        }

        prometheus.exporter.unix "node" {
          enable_collectors = [
            "cpu", "diskstats", "filesystem",
            "loadavg", "meminfo", "netdev",
            "time", "uname",
          ]
        }

        prometheus.scrape "node" {
          targets    = prometheus.exporter.unix.node.targets
          forward_to = [prometheus.remote_write.viola.receiver]
          scrape_interval = "30s"
          job_name = "node"
        }

        prometheus.scrape "alloy" {
          targets = [{"__address__" = "127.0.0.1:12345"}]

          forward_to = [prometheus.remote_write.viola.receiver]
          job_name   = "alloy"
        }

        loki.write "viola" {
          endpoint {
            url = "http://100.109.123.164:3100/loki/api/v1/push"
          }
        }

        prometheus.remote_write "viola" {
          endpoint {
            url = "http://100.109.123.164:9009/api/v1/push"
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
          }
        }

        otelcol.exporter.otlp "tempo" {
          client {
            endpoint = "http://100.109.123.164:4317"
            tls {
              insecure = true
            }
          }
        }
      '';
    };
  };
}
