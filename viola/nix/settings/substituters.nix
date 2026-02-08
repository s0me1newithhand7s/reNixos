_: {
  nix = {
    settings = {
      substituters = [
        # cache.nixos.org
        "https://cache.nixos.org"
        # cache.garnix.org
        "https://cache.garnix.io"
        # cachix
        "https://nix-community.cachix.org/"
        "https://chaotic-nyx.cachix.org/"
        "https://hyprland.cachix.org"
        "https://chaotic-nyx.cachix.org/"
        # nix-community
        "https://hydra.nix-community.org/"
      ];
    };
  };
}
