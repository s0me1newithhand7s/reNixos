{
    pkgs, 
    ... 
}: {
    environment = {
        systemPackages = with pkgs; [
            home-manager
            xdg-desktop-portal-gtk
            xdg-desktop-portal-hyprland
            nixos-anywhere
            sbctl
            sops
        ];
    };
}
