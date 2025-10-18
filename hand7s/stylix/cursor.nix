{pkgs, ...}: {
    stylix = {
        cursor = {
            name = "material_light_cursors";
            package = pkgs.material-cursors;
            size = 20;
        };
    };
}
