_: {
  services = {
    forgejo = {
      enable = true;

      database = {
        type = "postgres";
        host = "localhost";
      };

      settings = {
        DEFAULT = {
          APP_NAME = "Forgejo";
          APP_SLOGAN = "hand7s'es instance";
          APP_DISPLAY_NAME_FORMAT = "{APP_NAME}: {APP_SLOGAN}.";
          RUN_MODE = "prod";
        };

        repository = {
          DEFAULT_PRIVATE = "last";
          PREFERRED_LICENSES = "MIT";
          DISABLE_HTTP_GIT = false;
          USE_COMPAT_SSH_URI = true;
          GO_GET_CLONE_URL_PROTOCOL = "http";
          DEFAULT_BRANCH = "master";
        };

        "repository.pull-request" = {
          WORK_IN_PROGRESS_PREFIXES = "[WIP]:";
        };

        "repository.issue" = {
          MAX_PINNED = 2;
        };

        "repository.upload" = {
          ENABLED = true;
          FILE_MAX_SIZE = 25;
          MAX_FILES = 10;
        };

        "repository.signing" = {
          FORMAT = "openssh";
          INITIAL_COMMIT = "always";
          WIKI = "always";
          CRUD_ACTIONS = "always";
          MERGES = "always";
        };

        opentelemetry = {
          EXPORTER = "otlp";
          ENDPOINT = "http://127.0.0.1:4318";
        };

        badges = {
          ENABLED = false;
        };

        cors = {
          ENABLED = false;
        };

        actions = {
          ENABLED = false;
        };

        mailer = {
          ENABLED = false;
        };

        cron = {
          ENABLED = false;
        };

        metrics = {
          ENABLED = false;
        };

        federation = {
          ENABLED = false;
        };

        ui = {
          DEFAULT_THEME = "forgejo-auto-tritanopia";
        };

        "ui.meta" = {
          AUTHOR = "hand7s'es Forgejo instance";
          DESCRIPTION = "Forgejo - by Codeberg.";
        };

        log = {
          LEVEL = "Warn";
        };

        service = {
          DISABLE_REGISTRATION = true;
          ALLOW_ONLY_EXTERNAL_REGISTRATION = true;
        };

        oauth2_client = {
          ENABLE_AUTO_REGISTER = true;
          ACCOUNT_LINKING = "auto";
          USERNAME = "preferred_username";
        };

        "service.explore" = {
          DISABLE_ORGANIZATIONS_PAGE = true;
        };

        server = {
          DOMAIN = "git.hand7s.org";
          ROOT_URL = "https://git.hand7s.org";

          HTTP_PORT = 53350;

          START_SSH_SERVER = false;
          LFS_START_SERVER = false;
        };

        openid = {
          ENABLE_OPENID_SIGNIN = true;
          ENABLE_OPENID_SIGNUP = true;
        };

        cache = {
          ADAPTER = "redis";
          INTERVAL = "900";
          HOST = "";
          ITEM_TTL = "1h";
        };
      };
    };
  };
}
