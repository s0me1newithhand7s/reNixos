{pkgs, ...}: {
    boot = {
        zfs = {
            package = pkgs.zfs_cachyos;
            allowHibernation = false;
            removeLinuxDRM = false;
        };
    };
}
