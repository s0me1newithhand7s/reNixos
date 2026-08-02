{self, ...}: {
  home-manager = {
    useGlobalPkgs = true;
    useUserPackages = true;

    users = {
      "hand7s" = {
        imports = [
          "${self}/hand7s/"
          self.homeModules."baseline"
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
