{
    description = "hand7s'es flake";

    inputs = {
        agenix = {
            flake = true;
            type = "github";
            owner = "yaxitech";
            repo = "ragenix";
        };

        agenix-rekey = {
            flake = true;
            type = "github";
            owner = "oddlama";
            repo = "agenix-rekey";

            inputs = {
                nixpkgs = {
                    follows = "nixpkgs";
                };
            };
        };

        ayugram-desktop = {
            flake = true;
            type = "github";
            owner = "ndfined-crp";
            repo = "ayugram-desktop";
        };

        chaotic = {
            flake = true;
            type = "github";
            owner = "chaotic-cx";
            repo = "nyx";
            ref = "nyxpkgs-unstable";
        };

        deploy-rs = {
            flake = true;
            type = "github";
            owner = "serokell";
            repo = "deploy-rs";
        };

        devshell = {
            flake = true;
            type = "github";
            owner = "numtide";
            repo = "devshell";
        };

        disko = {
            flake = true;
            type = "github";
            owner = "nix-community";
            repo = "disko";

            inputs = {
                nixpkgs = {
                    follows = "nixpkgs";
                };
            };
        };

        flake-parts = {
            flake = true;
            type = "github";
            owner = "hercules-ci";
            repo = "flake-parts";
        };

        freesm = {
            flake = true;
            type = "github";
            owner = "freesmteam";
            repo = "freesmlauncher";
        };

        home-manager = {
            flake = true;
            type = "github";
            owner = "nix-community";
            repo = "home-manager";

            inputs = {
                nixpkgs = {
                    follows = "nixpkgs";
                };
            };
        };

        homebrew-bundle = {
            flake = false;
            type = "github";
            owner = "homebrew";
            repo = "homebrew-bundle";
        };

        homebrew-cask = {
            flake = false;
            type = "github";
            owner = "homebrew";
            repo = "homebrew-cask";
        };

        homebrew-core = {
            flake = false;
            type = "github";
            owner = "homebrew";
            repo = "homebrew-core";
        };

        hyprland = {
            flake = true;
            type = "github";
            owner = "hyprwm";
            repo = "Hyprland";
        };

        lanzaboote = {
            flake = true;
            type = "github";
            owner = "nix-community";
            repo = "lanzaboote";
            ref = "v0.4.2";

            inputs = {
                nixpkgs = {
                    follows = "nixpkgs";
                };
            };
        };

        nekoflake = {
            flake = true;
            type = "github";
            owner = "s0me1newithhand7s";
            repo = "nekoflake";
        };

        nix-darwin = {
            flake = true;
            type = "github";
            owner = "LnL7";
            repo = "nix-darwin";

            inputs = {
                nixpkgs = {
                    follows = "nixpkgs";
                };
            };
        };

        nix-homebrew = {
            flake = true;
            type = "github";
            owner = "zhaofengli";
            repo = "nix-homebrew";
        };

        nix-index-database = {
            flake = true;
            type = "github";
            owner = "nix-community";
            repo = "nix-index-database";

            inputs = {
                nixpkgs = {
                    follows = "nixpkgs";
                };
            };
        };

        nix-on-droid = {
            flake = true;
            type = "github";
            owner = "nix-community";
            repo = "nix-on-droid";

            inputs = {
                nixpkgs = {
                    follows = "nixpkgs";
                };

                home-manager = {
                    follows = "home-manager";
                };
            };
        };

        nixos-anywhere = {
            flake = true;
            type = "github";
            owner = "nix-community";
            repo = "nixos-anywhere";
        };

        nixos-generators = {
            flake = true;
            type = "github";
            owner = "nix-community";
            repo = "nixos-generators";

            inputs = {
                nixpkgs = {
                    follows = "nixpkgs";
                };
            };
        };

        nixpkgs = {
            flake = true;
            type = "github";
            owner = "nixos";
            repo = "nixpkgs";
            ref = "nixos-unstable";
        };

        noctalia = {
            flake = true;
            type = "github";
            owner = "noctalia-dev";
            repo = "noctalia-shell";

            inputs = {
                nixpkgs = {
                    follows = "nixpkgs";
                };

                quickshell = {
                    follows = "quickshell";
                };
            };
        };

        quickshell = {
            flake = true;
            type = "git";
            url = "https://git.outfoxxed.me/outfoxxed/quickshell";

            inputs = {
                nixpkgs = {
                    follows = "nixpkgs";
                };
            };
        };

        sops-nix = {
            flake = true;
            type = "github";
            owner = "Mic92";
            repo = "sops-nix";
        };

        spicetify-nix = {
            flake = true;
            type = "github";
            owner = "Gerg-L";
            repo = "spicetify-nix";

            inputs = {
                nixpkgs = {
                    follows = "nixpkgs";
                };
            };
        };

        stylix = {
            flake = true;
            type = "github";
            owner = "nix-community";
            repo = "stylix";
        };

        system-manager = {
            flake = true;
            type = "github";
            owner = "numtide";
            repo = "system-manager";

            inputs = {
                nixpkgs = {
                    follows = "nixpkgs";
                };
            };
        };

        treefmt-nix = {
            flake = true;
            type = "github";
            owner = "numtide";
            repo = "treefmt-nix";
        };

        vscserver = {
            flake = true;
            type = "github";
            owner = "nix-community";
            repo = "nixos-vscode-server";
        };

        zen-browser = {
            flake = true;
            type = "github";
            owner = "youwen5";
            repo = "zen-browser-flake";

            inputs = {
                nixpkgs = {
                    follows = "nixpkgs";
                };
            };
        };
    };

    outputs = inputs @ {
        flake-parts,
        self,
        ...
    }:
        flake-parts.lib.mkFlake {
            inherit
                inputs
                self
                ;
        } {
            systems = [
                "x86_64-linux"
                "aarch64-linux"
            ];

            imports = [
                # modules
                inputs.devshell.flakeModule
                inputs.treefmt-nix.flakeModule
                inputs.home-manager.flakeModules.home-manager
            ];

            flake = {
                homeConfigurations = {
                    "hand7s" = inputs.home-manager.lib.homeManagerConfiguration {
                        pkgs = inputs.nixpkgs.legacyPackages.x86_64-linux;
                        extraSpecialArgs = {
                            inherit
                                inputs
                                self
                                ;
                        };

                        modules = [
                            "${self}/hand7s/standalone.nix"
                            inputs.spicetify-nix.homeManagerModules.default
                            inputs.hyprland.homeManagerModules.default
                            inputs.chaotic.homeManagerModules.default
                            inputs.sops-nix.homeManagerModules.sops

                            inputs.nix-index-database.homeModules.nix-index
                            inputs.noctalia.homeModules.default
                        ];
                    };
                };

                nixosConfigurations = {
                    "s0mePC-nix" = inputs.nixpkgs.lib.nixosSystem {
                        system = "x86_64-linux";
                        specialArgs = {
                            inherit
                                inputs
                                self
                                ;
                        };

                        modules = [
                            "${self}/s0mePC-nix/"
                            inputs.chaotic.nixosModules.default
                            inputs.stylix.nixosModules.stylix
                            inputs.sops-nix.nixosModules.sops
                            inputs.disko.nixosModules.disko
                            inputs.lanzaboote.nixosModules.lanzaboote
                            inputs.home-manager.nixosModules.default
                            inputs.nix-index-database.nixosModules.nix-index
                        ];
                    };

                    "s0melapt0p-nix" = inputs.nixpkgs.lib.nixosSystem {
                        system = "x86_64-linux";
                        specialArgs = {
                            inherit
                                inputs
                                self
                                ;
                        };

                        modules = [
                            "${self}/s0melapt0p-nix/"
                            inputs.chaotic.nixosModules.default
                            inputs.stylix.nixosModules.stylix
                            inputs.sops-nix.nixosModules.sops
                            inputs.disko.nixosModules.disko
                            inputs.home-manager.nixosModules.home-manager
                            inputs.lanzaboote.nixosModules.lanzaboote
                            inputs.nix-index-database.nixosModules.nix-index
                        ];
                    };

                    "s0mev1rtn0de-nix" = inputs.nixpkgs.lib.nixosSystem {
                        system = "x86_64-linux";
                        specialArgs = {
                            inherit
                                inputs
                                self
                                ;
                        };

                        modules = [
                            "${self}/s0mev1rtn0de-nix/"
                            inputs.disko.nixosModules.disko
                            inputs.home-manager.nixosModules.default
                            inputs.sops-nix.nixosModules.sops
                            inputs.nix-index-database.nixosModules.nix-index
                        ];
                    };

                    "s0meMiniPC-nix" = inputs.nixpkgs.lib.nixosSystem {
                        system = "x86_64-linux";
                        specialArgs = {
                            inherit
                                inputs
                                self
                                ;
                        };

                        modules = [
                            "${self}/s0meMiniPC-nix"
                            inputs.chaotic.nixosModules.default
                            inputs.stylix.nixosModules.stylix
                            inputs.sops-nix.nixosModules.sops
                            inputs.disko.nixosModules.disko
                            inputs.lanzaboote.nixosModules.lanzaboote
                            inputs.home-manager.nixosModules.default
                            inputs.nix-index-database.nixosModules.nix-index
                        ];
                    };
                };

                nixOnDroidConfigurations = {
                    n0thing-3a = inputs.nix-on-droid.lib.nixOnDroidConfiguration {
                        pkgs = import inputs.nixpkgs {
                            system = "aarch64-linux";
                            overlays = [
                                inputs.nix-on-droid.overlays.default
                            ];
                        };

                        extraSpecialArgs = {
                            inherit
                                inputs
                                self
                                ;
                        };

                        modules = [
                            inputs.home-manager.nixOnDroidModules.default
                        ];
                    };
                };

                systemConfigs = {
                    s0mePC = inputs.system-manager.lib.makeSystemConfig {
                        extraSpecialArgs = {
                            inherit
                                inputs
                                self
                                ;
                        };

                        modules = [
                            # "${self}/s0mePC/"
                            inputs.home-manager.nixosModules.default

                            {
                                nixpkgs.hostPlatform = "x86_64-linux";
                            }
                        ];
                    };
                };

                deploy = {
                    user = "hand7s";
                    interactiveSudo = true;
                    autoRollback = true;
                    magicRollback = true;
                    remoteBuild = false;
                    sshOpts = [
                        "-p"
                        "6969"
                    ];

                    nodes = {
                        "s0mev1rtn0de-nix" = {
                            hostname = "90.156.226.152";
                            profiles = {
                                main = {
                                    path = inputs.deploy-rs.lib.x86_64-linux.activate.nixos self.nixosConfigurations.s0mev1rtn0de-nix;
                                    profilePath = "/nix/var/nix/profiles/system";
                                };
                            };
                        };
                    };
                };
            };

            perSystem = {...}: {
                treefmt = {
                    flakeFormatter = true;
                    flakeCheck = false;
                    enableDefaultExcludes = true;

                    programs = {
                        statix = {
                            enable = true;
                            priority = 1;
                            includes = [
                                "*.nix"
                            ];

                            disabled-lints = [
                                "empty_pattern"
                            ];
                        };

                        deadnix = {
                            enable = true;
                            priority = 2;
                            includes = [
                                "*.nix"
                            ];
                        };
                    };

                    settings = {
                        global = {
                            on-unmatched = "fatal";
                            excludes = [
                                "secrets/*"
                                ".sops.yaml"
                                ".gitignore"
                            ];
                        };
                    };
                };
            };
        };
}
