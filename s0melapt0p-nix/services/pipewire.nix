{...}: {
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
                    "92-low-latency" = {
                        "context.properties" = {
                            "default.clock.rate" = 48000;
                            "default.clock.allowed-rates" = [
                                44100
                                48000
                                88200
                                96000
                            ];

                            "default.clock.min-quantum" = 512;
                            "default.clock.quantum" = 4096;
                            "default.clock.max-quantum" = 8192;
                        };
                    };

                    "93-no-resampling" = {
                        "context.properties" = {
                            "default.clock.rate" = 48000;
                            "default.clock.allowed-rates" = [
                                44100
                                48000
                                96000
                                192000
                            ];
                        };
                    };

                    "94-no-upmixing" = {
                        "stream.properties" = {
                            "channelmix.upmix" = false;
                        };
                    };
                };
            };
        };
    };
}
