{
  config,
  lib,
  pkgs,
  ...
}: {
  services = {
    grafana = {
      enable = true;
      declarativePlugins = with pkgs.grafanaPlugins; [
        grafana-lokiexplore-app
        grafana-exploretraces-app
        grafana-metricsdrilldown-app
        grafana-pyroscope-app

        redis-datasource
        redis-explorer-app

        volkovlabs-rss-datasource
      ];

      settings = {
        log = {
          level = "info";
          mode = "console";
        };

        security = {
          secret_key = config.sops.secrets."grafanaKey".path;
        };

        server = {
          http_addr = "0.0.0.0";
          http_port = 3030;
          domain = "grafana.hand7s.org";
          root_url = "https://grafana.hand7s.org";
        };

        "auth.generic_oauth" = {
          enabled = true;
          name = "Zitadel";
          icon = "signin";
          scopes = "openid profile email offline_access urn:zitadel:iam:org:project:id:zitadel:aud";
          client_id = "";
          client_secret = "";
          auth_url = "https://zitadel.hand7s.org/oauth/v2/authorize";
          token_url = "http://zitadel.hand7s.org:8443/oauth/v2/token";
          api_url = "http://zitadel.hand7s.org:8443/oidc/v1/userinfo";
          tls_skip_verify_insecure = true;
          allow_assign_grafana_admin = true;
          role_attribute_strict = true;
          skip_org_role_sync = false;
          use_pkce = true;

          role_attribute_path = ''"urn:zitadel:iam:org:project:roles"."grafana-admin" && 'GrafanaAdmin' || 'Viewer' '';
        };

        "auth" = {
          disable_login_form = true;
          signout_redirect_url = "https://zitadel.hand7s.org/oidc/v1/end_session";
        };
      };

      provision = {
        enable = true;

        datasources = {
          settings = {
            datasources =
              [
                {
                  name = "Loki-LGTM";
                  type = "loki";
                  url = "http://127.0.0.1:3100";
                  isDefault = false;
                  jsonData = {
                    derivedFields = [
                      {
                        name = "traceID";
                        matcherRegex = "traceID=(\\w+)";
                        url = "http://127.0.0.1:3200";
                        datasourceUid = "tempo";
                      }
                    ];
                  };
                }

                {
                  name = "Mimir-LGTM";
                  type = "prometheus";
                  url = "http://127.0.0.1:9009/prometheus";
                  isDefault = true;
                }

                {
                  name = "Tempo-LGTM";
                  type = "tempo";
                  uid = "tempo";
                  url = "http://127.0.0.1:3200";
                  jsonData = {
                    lokiSearch = {
                      datasourceUid = "loki";
                    };

                    serviceMap = {
                      datasourceUid = "mimir";
                    };

                    nodeGraph = {
                      enabled = true;
                    };
                  };
                }
              ]
              ++ lib.forEach [
                "forgejo"
                "loki"
                "mimir"
                "stalwart"
                "traefik"
                "zitadel"
              ] (
                name: {
                  name = "Redis-${name}";
                  type = "redis-datasource";
                  url = "unix:/run/redis-${name}/redis.sock";
                  secureJsonData = {
                    password = name;
                  };
                }
              );
          };
        };
      };
    };
  };
}
