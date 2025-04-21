{
    inputs,
    ...
}: {
    nixpkgs = {
        overlays = [
            inputs.hyprpanel.overlay
        ];
    };
}