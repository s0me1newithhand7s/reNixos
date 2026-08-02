_: {
  security = {
    loginDefs = {
      settings = {
        DEFAULT_HOME = "yes";
        UMASK = "077";
        LOGIN_RETRIES = 3;
        LOGIN_TIMEOUT = 60;
        FAILLOG_ENAB = true;
        CONSOLE = "/dev/tty1";
      };
    };
  };
}
