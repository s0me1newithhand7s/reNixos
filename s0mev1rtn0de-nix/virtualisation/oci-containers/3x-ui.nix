{...}: {
  virtualisation = {
    oci-containers = {
      containers = {
        "3x-ui" = {
          autoStart = true;
          image = "ghcr.io/mhsanaei/3x-ui:latest";
          volumes = [
            "/docker/3x-ui/db/:/etc/x-ui/"
            "/docker/3x-ui/certs/:/root/cert/"
          ];

          environment = {
            XRAY_VMESS_AEAD_FORCED = toString false;
            XUI_ENABLE_FAIL2BAN = toString false;
          };

          extraOptions = [
            "--network=host"
            "--tty=true"
          ];
        };
      };
    };
  };
}
