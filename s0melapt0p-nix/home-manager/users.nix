{
    inputs,
    self,
    ...
}: {
    home-manager = {
        users = {
            hand7s = {
                imports = [
                    "${self}/hand7s/"
                    inputs.spicetify-nix.homeManagerModules.default
                    inputs.hyprland.homeManagerModules.default
                    inputs.chaotic.homeManagerModules.default
                    inputs.sops-nix.homeManagerModules.sops
                    
                    inputs.noctalia.homeModules.default
                ];
            };
        };

        backupFileExtension = "backup";

        extraSpecialArgs = {
            inherit inputs self;
        };
    };
}
