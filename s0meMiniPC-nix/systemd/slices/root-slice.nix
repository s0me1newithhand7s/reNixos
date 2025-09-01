{...}: {
    systemd = {
        slices = {
            root = {
                sliceConfig = {
                    ManagedOOMSwap = "kill";
                    ManagedOOMMemoryPressure = "kill";
                    ManagedOOMMemoryPressureLimit = "40%";
                    ManagedOOMMemoryPressureDurationSec = 0;
                };
            };
        };
    };
}
