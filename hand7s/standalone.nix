{self, ...}: {
    imports = [
        "${self}/hand7s/nix/settings/substituters.nix"
        "${self}/hand7s/nix/settings/trusted-public-keys.nix"
        "${self}/hand7s/nix/package.nix"

        "${self}/hand7s/stylix/base16Scheme.nix"
        "${self}/hand7s/stylix/cursor.nix"
        "${self}/hand7s/stylix/defaults.nix"
        "${self}/hand7s/stylix/fonts.nix"
        "${self}/hand7s/stylix/image.nix"

        "${self}/hand7s/"
    ];
}
