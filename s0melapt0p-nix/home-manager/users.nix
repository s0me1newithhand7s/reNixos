{inputs, ...}: {
    home-manager = {
        users = {
            hand7s = {
                imports = [
                    ../../hand7s/default.nix
                    inputs.hyprpanel.homeManagerModules.hyprpanel
                    inputs.spicetify-nix.homeManagerModules.default
                    inputs.hyprland.homeManagerModules.default
                ];
            };
        };

        backupFileExtension = "backup";

        extraSpecialArgs = {
            inherit inputs;
        };
    };
}
