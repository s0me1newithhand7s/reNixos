{
    pkgs,
    lib,
    ...
}: {
    environment = {
        systemPackages = with pkgs; [
            (lib.hiPrio uutils-coreutils-noprefix)
            uutils-findutils
            uutils-diffutils
            home-manager
        ];
    };
}
