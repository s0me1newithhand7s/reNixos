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

            monospace = {
                package = pkgs.nerd-fonts.roboto-mono;
                name = "Roboto-Mono Nerd Font";
            };

            emoji = {
                package = pkgs.nerd-fonts.symbols-only;
                name = "Symbols Only Nerd Font";
            };

            sansSerif = {
                package = pkgs.nerd-fonts.aurulent-sans-mono;
                name = "Aurulent Sans Mono Nerd Font";
            };

            serif = {
                package = pkgs.nerd-fonts.hack;
                name = "Hack Nerd Font";
            };
        };
    };
}