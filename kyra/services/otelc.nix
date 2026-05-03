{lib, ...}: {
  services = {
    opentelemetry-collector = {
      enable = true;
      settings = {
        receivers = {
          otlp = {
            protocols = {
              grpc = {
                endpoint = "127.0.0.1:4317";
              };

              http = {
                endpoint = "127.0.0.1:4318";
              };
            };
          };
        };

        exporters = {
          otlp = {
            endpoint = "http://100.109.123.164:4317";
            tls = {
              insecure = true;
            };
          };
        };

        service = {
          pipelines =
            lib.genAttrs [
              "traces"
              "metrics"
              "logs"
            ] (
              _type: {
                receivers = [
                  "otlp"
                ];
                exporters = [
                  "otlp"
                ];

                processors = [
                  "batch"
                ];
              }
            );
        };
      };
    };
  };
}
