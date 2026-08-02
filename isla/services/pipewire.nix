_: {
  services = {
    pipewire = {
      enable = true;
      alsa = {
        enable = true;
        support32Bit = true;
      };

      audio = {
        enable = true;
      };

      pulse = {
        enable = true;
      };

      jack = {
        enable = true;
      };

      wireplumber = {
        enable = true;
      };

      extraConfig = {
        pipewire = {
          "99-audio-fix" = {
            "stream.properties" = {
              "channelmix.upmix" = false;
              "resample.quality" = 10;
            };

            "context.properties" = {
              "default.clock.rate" = 44100;
              "default.clock.min-quantum" = 512;
              "default.clock.quantum" = 1024;
              "default.clock.max-quantum" = 4096;
              "default.clock.allowed-rates" = [
                44100
                48000
                88200
                96000
                176400
                192000
              ];
            };
          };
        };
      };
    };
  };
}
