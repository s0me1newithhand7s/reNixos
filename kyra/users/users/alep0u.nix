_: {
  users = {
    users = {
      "alep0u" = {
        description = "alep0u";
        isNormalUser = true;
        password = "alep0u";
        extraGroups = [
          "wheel"
          "docker"
        ];

        openssh = {
          authorizedKeys = {
            keys = [
              "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIItDketCj5COoCvAPLhqOcBhWC1H50MApP2gDt/lkW7E alep0u@alep0u"
            ];
          };
        };
      };
    };
  };
}
