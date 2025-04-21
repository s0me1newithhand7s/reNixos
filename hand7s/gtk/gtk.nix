{
    pkgs,
    ...
}: {
    gtk = {
        enable = true;
        iconTheme = {
            name = "Whitesur-icon-theme";
            package = pkgs.whitesur-icon-theme;
        };
    };
}