{
    pkgs,
    ...
}: {
    stylix = {
        cursor = {
            size = 18;
            name = "Whitesur-cursors";
            package = pkgs.whitesur-cursors;
        };
    };
}