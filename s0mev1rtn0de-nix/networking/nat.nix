{...}: {
    networking = {
        nat = {
            enable = true;
            enableIPv6 = true;
            externalInterface = "ens3";
            internalInterfaces = [
                "wg0"
            ];
        };
    };
}
