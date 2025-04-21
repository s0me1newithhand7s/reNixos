{
    ...
}: {
    security = {
        pam = {
            services = {
                swaylock = {
                    text = ''
                        auth include login
                    '';
                    fprintAuth = false;
                };
            };
        };
    };
}