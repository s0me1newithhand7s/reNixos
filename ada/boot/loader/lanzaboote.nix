{lib, ...}: {
  imports = [
    (
      lib.mkAliasOptionModule [
        "boot"
        "loader"
        "lanzaboote"
      ] [
        "boot"
        "lanzaboote"
      ]
    )
  ];

  boot = {
    loader = {
      lanzaboote = {
        enable = true;
        configurationLimit = 2;
        pkiBundle = "/var/lib/sbctl";
        sortKey = "nixos";
        autoGenerateKeys = {
          enable = true;
        };

        settings = {
          timeout = 2;
          editor = false;
        };

        measuredBoot = {
          enable = true;
          pcrs = [
            0
            2
            7
          ];
        };
      };
    };
  };
}
