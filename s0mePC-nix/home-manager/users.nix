{
    inputs,
    self,
    ...
}: {
    home-manager = {
        users = {
            hand7s = {
                imports = [
                    "${self}/hand7s/default.nix"
                    inputs.spicetify-nix.homeManagerModules.default
                    inputs.hyprland.homeManagerModules.default
                    inputs.chaotic.homeManagerModules.default
                ];
            };
        };

        backupFileExtension = "backup";

        extraSpecialArgs = {
            inherit inputs self;
        };
    };
}
