{
    description = "main flake.";

    inputs = {
        nixpkgs = {
            url = "github:nixos/nixpkgs/nixos-unstable";
        };

        nixos-hardware = {
            url = "github:nixos/nixos-hardware";
        };

        nixgl = {
            url = "github:nix-community/nixGL";
        };

        nur = {
            url = "github:nix-community/NUR";
        };

        nixos-generators = {
            url = "github:nix-community/nixos-generators";
            inputs = {
                nixpkgs = {
                    follows = "nixpkgs";
                };
            };
        };

        nixos-anywhere = {
            url = "github:nix-community/nixos-anywhere";
        };

        impermanence = {
            url = "github:nix-community/impermanence";
        };

        home-manager = {
            url = "github:nix-community/home-manager/";
            inputs = {
                nixpkgs = {
                    follows = "nixpkgs";
                };
            };
        };

        disko = {
            url = "github:nix-community/disko";
            inputs = {
                nixpkgs = {
                    follows = "nixpkgs";
                };
            };
        };

        lanzaboote = {
            url = "github:nix-community/lanzaboote/v0.4.2";
            inputs = {
                nixpkgs = {
                    follows = "nixpkgs";
                };
            };
        };

        vscserver = {
            url = "github:nix-community/nixos-vscode-server";
        };

        nix-on-droid = {
            url = "github:nix-community/nix-on-droid/master";
            inputs = {
                nixpkgs = {
                    follows = "nixpkgs";
                };

                home-manager = {
                    follows = "home-manager";
                };
            };
        };

        stylix = {
            url = "github:nix-community/stylix";
        };

        freesm = {
            url = "github:FreesmTeam/FreesmLauncher";
        };

        agenix = {
            url = "github:ryantm/agenix";
        };

        chaotic = {
            url = "github:chaotic-cx/nyx/nyxpkgs-unstable";
        };

        nix-darwin = {
            url = "github:LnL7/nix-darwin/master";
            inputs = {
                nixpkgs = {
                    follows = "nixpkgs";
                };
            };
        };

        nix-homebrew = {
            url = "github:zhaofengli-wip/nix-homebrew";
        };

        homebrew-core = {
            url = "github:homebrew/homebrew-core";
            flake = false;
        };

        homebrew-cask = {
            url = "github:homebrew/homebrew-cask";
            flake = false;
        };

        homebrew-bundle = {
            url = "github:homebrew/homebrew-bundle";
            flake = false;
        };

        sops-nix = {
            url = "github:Mic92/sops-nix";
        };

        ayugram-desktop = {
            url = "github:ndfined-crp/ayugram-desktop/";
        };

        hyprland = {
            url = "github:hyprwm/Hyprland";
        };

        hyprplugs = {
            url = "github:hyprwm/hyprland-plugins";
            inputs = {
                hyprland = {
                    follows = "hyprland";
                };
            };
        };

        hyprsplit = {
            url = "github:Duckonaut/split-monitor-workspaces";
            inputs = {
                hyprland = {
                    follows = "hyprland";
                };
            };
        };

        hyprpanel = {
            url = "github:hyprwm/Hyprland/v0.49.0";
            inputs = {
                nixpkgs = {
                    follows = "nixpkgs";
                };
            };
        };

        hypremot = {
            url = "github:zakk4223/hyprland-easymotion";
            inputs = {
                nixpkgs = {
                    follows = "nixpkgs";
                };
            };
        };

        hyprcurs = {
            url = "github:VirtCode/hypr-dynamic-cursors";
            inputs = {
                nixpkgs = {
                    follows = "nixpkgs";
                };
            };
        };

        hyprspace = {
            url = "github:KZDKM/Hyprspace";
            inputs = {
                nixpkgs = {
                    follows = "nixpkgs";
                };
            };
        };

        hyprgrass = {
            url = "github:horriblename/hyprgrass";
            inputs = {
                nixpkgs = {
                    follows = "nixpkgs";
                };
            };
        };

        spicetify-nix = {
            url = "github:Gerg-L/spicetify-nix";
            inputs = {
                nixpkgs = {
                    follows = "nixpkgs";
                };
            };
        };

        zen-browser = {
            url = "github:youwen5/zen-browser-flake";
            inputs = {
                nixpkgs = {
                    follows = "nixpkgs";
                };
            };
        };
    };

    outputs = {
        self,
        nixpkgs,
        home-manager,
        ...
    } @ inputs: {
        homeConfigurations = {
            hand7s = home-manager.lib.homeManagerConfiguration {
                pkgs = nixpkgs.legacyPackages.x86_64-linux;
                extraSpecialArgs = {
                    inherit inputs self;
                };

                modules = [
                    "${self}/hand7s/standalone.nix"
                    inputs.stylix.homeManagerModules.stylix
                    inputs.chaotic.homeManagerModules.default
                    inputs.sops-nix.homeManagerModules.sops
                    inputs.spicetify-nix.homeManagerModules.default
                    inputs.hyprland.homeManagerModules.default
                ];
            };
        };

        nixosConfigurations = {
            s0mePC-nix = nixpkgs.lib.nixosSystem {
                system = "x86_64-linux";
                specialArgs = {
                    inherit inputs self;
                };
                modules = [
                    "${self}/s0mePC-nix/default.nix"
                    "${self}/s0mePC-nix/disko.nix"
                    inputs.chaotic.nixosModules.default
                    inputs.stylix.nixosModules.stylix
                    inputs.sops-nix.nixosModules.sops
                    inputs.disko.nixosModules.disko
                    inputs.lanzaboote.nixosModules.lanzaboote
                    inputs.home-manager.nixosModules.default
                ];
            };

            s0meMiniPC-nix = nixpkgs.lib.nixosSystem {
                system = "x86_64-linux";
                specialArgs = {
                    inherit inputs self;
                };
                modules = [
                    "${self}/s0meMiniPC-nix/default.nix"
                    "${self}/s0meMiniPC-nix/disko.nix"
                    inputs.chaotic.nixosModules.default
                    inputs.stylix.nixosModules.stylix
                    inputs.sops-nix.nixosModules.sops
                    inputs.disko.nixosModules.disko
                    inputs.lanzaboote.nixosModules.lanzaboote
                    inputs.home-manager.nixosModules.default
                ];
            };

            s0men0de-nix = nixpkgs.lib.nixosSystem {
                system = "x86_64-linux";
                specialArgs = {
                    inherit inputs self;
                };
                modules = [
                    "${self}/s0men0de-nix/default.nix"
                    "${self}/s0men0de-nix/disko.nix"
                    inputs.stylix.nixosModules.stylix
                    inputs.sops-nix.nixosModules.sops
                    inputs.disko.nixosModules.disko
                    inputs.home-manager.nixosModules.default
                ];
            };

            s0melapt0p-nix = nixpkgs.lib.nixosSystem {
                system = "x86_64-linux";
                specialArgs = {
                    inherit inputs self;
                };
                modules = [
                    "${self}/s0melapt0p-nix/default.nix"
                    "${self}/s0melapt0p-nix/disko.nix"
                    inputs.chaotic.nixosModules.default
                    inputs.stylix.nixosModules.stylix
                    inputs.sops-nix.nixosModules.sops
                    inputs.disko.nixosModules.disko
                    inputs.home-manager.nixosModules.home-manager
                    inputs.lanzaboote.nixosModules.lanzaboote
                ];
            };
        };
    };
}
