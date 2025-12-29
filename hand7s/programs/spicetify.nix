{
  lib,
  pkgs,
  inputs,
  ...
}: {
  programs = {
    spicetify = {
      enabledExtensions = with inputs.spicetify-nix.legacyPackages.${pkgs.system}.extensions; [
        adblock
        hidePodcasts
        shuffle
      ];

      theme = lib.mkForce inputs.spicetify-nix.legacyPackages.${pkgs.system}.themes.text;
      colorScheme = lib.mkForce "Spotify";
    };
  };
}
