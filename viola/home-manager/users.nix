{self, ...}: {
  home-manager = {
    users = {
      "hand7s" = {
        imports = [
          "${self}/hand7s/"
          self.inputs.agenix.homeManagerModules.default
          self.inputs.spicetify-nix.homeManagerModules.default
          self.inputs.hyprland.homeManagerModules.default
          self.inputs.chaotic.homeManagerModules.default
          self.inputs.sops-nix.homeManagerModules.sops

          self.inputs.nix-index-database.homeModules.nix-index
        ];
      };
    };

    backupFileExtension = "force";

    extraSpecialArgs = {
      inherit
        self
        ;
    };
  };
}
