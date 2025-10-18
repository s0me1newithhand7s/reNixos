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
                ];
            };
        };

        backupFileExtension = "force";

        extraSpecialArgs = {
            inherit 
                inputs 
                self
                ;
        };
    };
}
