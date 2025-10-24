{
    pkgs,
    lib,
    ...
}: {
    programs = {
        bat = {
            enable = true;
            config = {
                pager = "${lib.getExe pkgs.less} -FR";
            };
        };
    };
}
