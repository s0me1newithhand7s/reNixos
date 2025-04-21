{
    ...
}: {
    nix = {
        settings = {
            substituters = [
                # cache.nixos.org
                "https://nixos-cache-proxy.cofob.dev"
                "https://cache.nixos.org"
                # cache.garnix.org
                "https://cache.garnix.io"
                # cachix
                "https://nix-community.cachix.org/"
                "https://chaotic-nyx.cachix.org/"
                "https://ags.cachix.org"
                "https://hyprland.cachix.org"
                "https://chaotic-nyx.cachix.org/"
            ];
        };
    }; 
}
