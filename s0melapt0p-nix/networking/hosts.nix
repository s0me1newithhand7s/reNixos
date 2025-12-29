{...}: {
  networking = {
    hosts = {
      # EVA00
      "100.109.169.141" = [
        "eva00-nix.netbird.cloud"
        "eva00-nix"
      ];

      "90.156.226.152" = [
        "eva00-nix.lan"
        "eva00-nix"
      ];

      "200:deb2:ed25:a9e5:e30:4900:f88f:cb87" = [
        "eva00-nix.ygg"
        "eva00-nix"
      ];

      # EVA01
      "100.109.107.176" = [
        "eva01-nix.netbird.cloud"
        "eva01-nix"
      ];

      "37.114.50.235" = [
        "eva01-nix.lan"
        "eva01-nix"
      ];

      "200:6ef:a61f:2f01:71d4:196:ab70:2103" = [
        "eva01-nix.ygg"
        "eva01-nix"
      ];

      # EVA02
      "100.109.178.135" = [
        "eva02-nix.netbird.cloud"
        "eva02-nix"
      ];

      "51.195.222.85" = [
        "eva02-nix.lan"
        "eva02-nix"
      ];

      "201:52d6:c753:c1fd:f8b6:5897:cc6a:e1be" = [
        "eva02-nix.ygg"
        "eva02-nix"
      ];

      # nerv-nix
      "100.109.7.114" = [
        "nerv-nix.netbird.cloud"
        "nerv-nix"
      ];

      "200:7abc:53c9:be8a:9941:96d:221b:cc76" = [
        "nerv-nix.ygg"
        "nerv-nix"
      ];
    };
  };
}
