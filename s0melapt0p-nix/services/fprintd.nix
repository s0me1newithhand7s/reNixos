{...}: {
    services = {
        fprintd = {
            enable = true;
            tod = {
                enable = false;
                # driver = pkgs.
            };
        };
    };
}
