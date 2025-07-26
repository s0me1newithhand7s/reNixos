{pkgs, ...}: {
    xdg = {
        portal = {
            enable = true;

            config = {
                common = {
                    default = [
                        "gtk"
                        "wlr"
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
            ];
        };
    };
}
