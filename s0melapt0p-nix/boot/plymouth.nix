{
    pkgs,
    ...
}: {
    boot = {
        plymouth = {
            enable = true;
            themePackages = with pkgs; [
                nixos-bgrt-plymouth
            ];
        };
    };
}
