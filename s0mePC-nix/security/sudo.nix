{
    lib,
    ...
}: {
    security = {
        sudo = {
            enable = lib.mkDefault false;
        };
    };
}