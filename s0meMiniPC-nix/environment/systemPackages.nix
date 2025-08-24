{
    pkgs,
    lib,
    ...
}: {
    environment = {
        systemPackages = with pkgs; [
            (lib.hiPrio uutils-coreutils-noprefix)
            xdg-desktop-portal-hyprland
            xdg-desktop-portal-gtk
            uutils-findutils
            uutils-diffutils
            home-manager
        ];
    };
}
