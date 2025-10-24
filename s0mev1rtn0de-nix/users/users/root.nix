{pkgs, ...}: {
    users = {
        users = {
            root = {
                shell = "${pkgs.util-linux}/bin/nologin";
            };
        };
    };
}
