{
  lib,
  pkgs,
  self,
  ...
}: {
  programs = {
    spicetify = {
      enabledExtensions = with self.inputs.spicetify-nix.legacyPackages.${pkgs.system}.extensions; [
        adblock
        hidePodcasts
        shuffle
      ];

      theme = lib.mkForce self.inputs.spicetify-nix.legacyPackages.${pkgs.system}.themes.text;
      colorScheme = lib.mkForce "TokyoNight";
    };
  };
}
