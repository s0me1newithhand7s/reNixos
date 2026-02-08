_: {
  services = {
    woodpecker-server = {
      enable = false;
      environment = {
        WOODPECKER_OPEN = "true";
        WOODPECKER_DATABASE_DRIVER = "postgres";
        WOODPECKER_DATABASE_DATASOURCE = "${pqsql_socket}";
        WOODPECKER_SERVER_ADDR = "${ciport1}";
        WOODPECKER_GRPC_ADDR = "${ciport1}";
        WOODPECKER_HOST = "https://cicd.hand7s.org";

        WOODPECKER_FORGEJO = "true";
        WOODPECKER_FORGEJO_URL = "https://git.hand7s.org";
        WOODPECKER_FORGEJO_CLIENT = "${cisecret1}";
        FORGEJO_SECRET = "${cisecret2}";
      };
    };
  };
}
