{
  pkgs,
  lib,
  ...
}: {
  services = {
    greetd = {
      enable = true;
      restart = false;
      settings = {
        default_session = {
          command = "${lib.getExe pkgs.tuigreet} --greet-align center -r -t -c ${lib.getExe pkgs.uwsm} start default";
          user = "greeter";
        };
      };
    };
  };
}
