{pkgs, ...}: {
    boot = {
        zfs = {
            allowHibernation = false;
            removeLinuxDRM = false;
        };
    };
}
