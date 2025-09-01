{...}: {
    services = {
        libinput = {
            enable = true;
            mouse = {
                accelProfile = "flat";
                accelSpeed = "-1.0";
                buttonMapping = "1 2 3 4 5 6 7 8 9";
                horizontalScrolling = true;
                leftHanded = false;
                naturalScrolling = true;
            };
        };
    };
}
