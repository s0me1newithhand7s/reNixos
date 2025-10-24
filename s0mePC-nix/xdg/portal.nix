{pkgs, ...}: {
    xdg = {
        portal = {
            enable = true;

            config = {
                common = {
                    default = [
                        "gtk"
                    ];
                };

                hyprland = {
                    preferred = [
                        "gtk"
                        "hyprland"
                    ];
                };
            };

            extraPortals = with pkgs; [
                xdg-desktop-portal
                xdg-desktop-portal-gtk
                xdg-desktop-portal-hyprland
            ];
        };
    };
}
