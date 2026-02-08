{
  lib,
  config,
  ...
}: {
  networking = {
    defaultGateway = lib.mkIf (config.networking.hostName == "mel") {
      address = "45.11.229.1";
      interface = "ens3";
    };

    defaultGateway6 = lib.mkIf (config.networking.hostName == "mel") {
      address = "2a0e:97c0:3e3:2Oa::1";
      interface = "ens3";
    };
  };
}
