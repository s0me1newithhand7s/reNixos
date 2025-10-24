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
            xdg-desktop-portal
            xdg-desktop-portal-gtk
            xdg-desktop-portal-hyprland
            home-manager
        ];
    };
}
