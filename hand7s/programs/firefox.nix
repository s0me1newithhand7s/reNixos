{
    inputs,
    pkgs,
    ...
}: let
    zen-browser = inputs.zen-browser.packages.${pkgs.system}.default;
in {
    programs = {
        firefox = {
            package = zen-browser;
        };
    };
}
