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

                sway = {
                    preferred = [
                        "gtk"
                        "wlr"
                    ];
                };
            };

            extraPortals = with pkgs; [
                xdg-desktop-portal-gtk
                xdg-desktop-portal-wlr
                xdg-desktop-portal-hyprland
            ];
        };
    };
}
