{
    pkgs,
    ...
}: {
    stylix = {
        fonts = {
            sizes = {
                applications = 10;
                desktop = 8;
                popups = 10;
                terminal = 8;   
            };

            emoji = {
                package = pkgs.nerd-fonts.iosevka;
                name = "Iosevka Nerd Font Mono";
            };

            sansSerif = {
                package = pkgs.dejavu_fonts;
                name = "DejaVu Sans";
            };
            serif = {
                package = pkgs.dejavu_fonts;
                name = "DejaVu Serif";
            };
        };
    };
}