{...}: {
    programs = {
        yubikey-touch-detector = {
            enable = true;
            libnotify = true;
            unixSocket = true;
        };
    };
}
