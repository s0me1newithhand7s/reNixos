{...}: {
    hardware = {
        enableRedistributableFirmware = true;
        cpu = {
            amd = {
                updateMicrocode = true;
            };
        };
    };
}
