{ 
    ...
}: {
    networking ={
        networkmanager = { 
            enable = true; 
            dns = "default";
            dhcp = "internal";
        };
    };
}