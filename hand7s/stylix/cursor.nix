{pkgs, ...}: {
    stylix = {
        cursor = {
            name = "Whitesur-cursors";
            package = pkgs.whitesur-cursors;
            size = 16;
        };
    };
}
