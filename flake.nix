{
  description = "hand7s'es flake";

  inputs = {
    "agenix" = {
      flake = true;
      type = "github";
      owner = "yaxitech";
      repo = "ragenix";
    };

    "agenix-rekey" = {
      flake = true;
      type = "github";
      owner = "oddlama";
      repo = "agenix-rekey";

      inputs = {
        "nixpkgs" = {
          follows = "nixpkgs";
        };
      };
    };

    "ayugram-desktop" = {
      flake = true;
      type = "github";
      owner = "ndfined-crp";
      repo = "ayugram-desktop";
    };

    "cachix" = {
      flake = true;
      type = "github";
      owner = "cachix";
      repo = "cachix";
    };

    "chaotic" = {
      flake = true;
      type = "github";
      owner = "chaotic-cx";
      repo = "nyx";
      ref = "nyxpkgs-unstable";
    };

    "deploy-rs" = {
      flake = true;
      type = "github";
      owner = "serokell";
      repo = "deploy-rs";
    };

    "devenv" = {
      flake = true;
      type = "github";
      owner = "cachix";
      repo = "devenv";
    };

    "disko" = {
      flake = true;
      type = "github";
      owner = "nix-community";
      repo = "disko";

      inputs = {
        "nixpkgs" = {
          follows = "nixpkgs";
        };
      };
    };

    "flake-parts" = {
      flake = true;
      type = "github";
      owner = "hercules-ci";
      repo = "flake-parts";
    };

    "freesm" = {
      flake = true;
      type = "github";
      owner = "freesmteam";
      repo = "freesmlauncher";
    };

    "fenix" = {
      flake = true;
      type = "github";
      owner = "nix-community";
      repo = "fenix";
    };

    "github-actions-nix" = {
      flake = true;
      type = "github";
      owner = "synapdeck";
      repo = "github-actions-nix";
    };

    "git-hooks-nix" = {
      flake = true;
      type = "github";
      owner = "cachix";
      repo = "git-hooks.nix";
    };

    "home-manager" = {
      flake = true;
      type = "github";
      owner = "nix-community";
      repo = "home-manager";

      inputs = {
        "nixpkgs" = {
          follows = "nixpkgs";
        };
      };
    };

    "homebrew-bundle" = {
      flake = false;
      type = "github";
      owner = "homebrew";
      repo = "homebrew-bundle";
    };

    "homebrew-cask" = {
      flake = false;
      type = "github";
      owner = "homebrew";
      repo = "homebrew-cask";
    };

    "homebrew-core" = {
      flake = false;
      type = "github";
      owner = "homebrew";
      repo = "homebrew-core";
    };

    "hyprland" = {
      flake = true;
      type = "github";
      owner = "hyprwm";
      repo = "Hyprland";
    };

    "lanzaboote" = {
      flake = true;
      type = "github";
      owner = "nix-community";
      repo = "lanzaboote";
      ref = "v0.4.2";

      inputs = {
        "nixpkgs" = {
          follows = "nixpkgs";
        };
      };
    };

    "nekoflake" = {
      flake = true;
      type = "github";
      owner = "s0me1newithhand7s";
      repo = "nekoflake";
    };

    "nix-bwrapper" = {
      flake = true;
      type = "github";
      owner = "Naxdy";
      repo = "nix-bwrapper";
    };

    "nix-darwin" = {
      flake = true;
      type = "github";
      owner = "LnL7";
      repo = "nix-darwin";

      inputs = {
        "nixpkgs" = {
          follows = "nixpkgs";
        };
      };
    };

    "nix-cachyos-kernel" = {
      flake = true;
      type = "github";
      owner = "xddxdd";
      repo = "nix-cachyos-kernel";
      ref = "release";
    };

    "nix-mineral" = {
      flake = true;
      type = "github";
      owner = "cynicsketch";
      repo = "nix-mineral";
    };

    "nix-homebrew" = {
      flake = true;
      type = "github";
      owner = "zhaofengli";
      repo = "nix-homebrew";
    };

    "nix-index-database" = {
      flake = true;
      type = "github";
      owner = "nix-community";
      repo = "nix-index-database";

      inputs = {
        "nixpkgs" = {
          follows = "nixpkgs";
        };
      };
    };

    "nix-on-droid" = {
      flake = true;
      type = "github";
      owner = "nix-community";
      repo = "nix-on-droid";

      inputs = {
        "nixpkgs" = {
          follows = "nixpkgs";
        };

        "home-manager" = {
          follows = "home-manager";
        };
      };
    };

    "nixos-anywhere" = {
      flake = true;
      type = "github";
      owner = "nix-community";
      repo = "nixos-anywhere";
    };

    "nixos-cli" = {
      flake = true;
      type = "github";
      owner = "nix-community";
      repo = "nixos-cli";
    };

    "nixos-generators" = {
      flake = true;
      type = "github";
      owner = "nix-community";
      repo = "nixos-generators";

      inputs = {
        "nixpkgs" = {
          follows = "nixpkgs";
        };
      };
    };

    "nixos-wsl" = {
      flake = true;
      type = "github";
      owner = "nix-community";
      repo = "nixos-wsl";
      ref = "main";
    };

    "nixpkgs" = {
      flake = true;
      type = "github";
      owner = "nixos";
      repo = "nixpkgs";
      ref = "nixos-unstable";
    };

    "noctalia" = {
      flake = true;
      type = "github";
      owner = "noctalia-dev";
      repo = "noctalia-shell";

      inputs = {
        "nixpkgs" = {
          follows = "nixpkgs";
        };

        "quickshell" = {
          follows = "quickshell";
        };
      };
    };

    "quickshell" = {
      flake = true;
      type = "git";
      url = "https://git.outfoxxed.me/quickshell/quickshell";

      inputs = {
        "nixpkgs" = {
          follows = "nixpkgs";
        };
      };
    };

    "sops-nix" = {
      flake = true;
      type = "github";
      owner = "Mic92";
      repo = "sops-nix";
    };

    "spicetify-nix" = {
      flake = true;
      type = "github";
      owner = "Gerg-L";
      repo = "spicetify-nix";

      inputs = {
        "nixpkgs" = {
          follows = "nixpkgs";
        };
      };
    };

    "stylix" = {
      flake = true;
      type = "github";
      owner = "nix-community";
      repo = "stylix";
    };

    "system-manager" = {
      flake = true;
      type = "github";
      owner = "numtide";
      repo = "system-manager";

      inputs = {
        "nixpkgs" = {
          follows = "nixpkgs";
        };
      };
    };

    "treefmt-nix" = {
      flake = true;
      type = "github";
      owner = "numtide";
      repo = "treefmt-nix";
    };

    "vscserver" = {
      flake = true;
      type = "github";
      owner = "nix-community";
      repo = "nixos-vscode-server";
    };
  };

  outputs = inputs @ {self, ...}:
    inputs.flake-parts.lib.mkFlake {
      inherit
        inputs
        self
        ;
    } {
      debug = true;

      systems = [
        "x86_64-linux"
        "aarch64-linux"
      ];

      imports = [
        # modules
        inputs.disko.flakeModules.default
        inputs.treefmt-nix.flakeModule
        inputs.home-manager.flakeModules.home-manager
        inputs.git-hooks-nix.flakeModule
        inputs.devenv.flakeModule
        inputs.github-actions-nix.flakeModule
      ];

      flake = let
        inherit
          (inputs."nixpkgs".lib)
          nixosSystem
          filesystem
          genAttrs
          map
          ;

        defaultModules = [];

        defaultPath = filesystem.listFilesRecursive "${self}/kyra/";

        inputedModules =
          map (
            {
              input,
              opt ? "default",
            }:
              inputs.${input}.nixosModules.${opt}
          ) [
            {
              opt = "disko";
              input = "disko";
            }

            {
              input = "home-manager";
            }

            {
              opt = "sops";
              input = "sops-nix";
            }

            {
              opt = "nix-index";
              input = "nix-index-database";
            }

            {
              opt = "nix-mineral";
              input = "nix-mineral";
            }
          ];

        kyraHost = name:
          nixosSystem {
            system = "x86_64-linux";
            modules = defaultModules ++ defaultPath ++ inputedModules;
            specialArgs = {
              inherit
                inputs
                name
                self
                ;
            };
          };

        kyraStack =
          genAttrs [
            "hazel"
            "lynn"
            "yara"
            "ivy"
            "mel"
          ]
          kyraHost;
      in {
        # Main PC
        nixosConfigurations =
          {
            "ada" = inputs.nixpkgs.lib.nixosSystem {
              system = "x86_64-linux";
              specialArgs = {
                inherit
                  inputs
                  self
                  ;
              };

              modules = [
                "${self}/ada/"
                inputs.chaotic.nixosModules.default
                inputs.stylix.nixosModules.stylix
                inputs.sops-nix.nixosModules.sops
                inputs.disko.nixosModules.disko
                inputs.lanzaboote.nixosModules.lanzaboote
                inputs.home-manager.nixosModules.default
                inputs.nix-index-database.nixosModules.nix-index
                inputs.nix-bwrapper.nixosModules.default
                inputs.nix-mineral.nixosModules.nix-mineral
              ];
            };

            # Main Laptop
            "isla" = inputs.nixpkgs.lib.nixosSystem {
              system = "x86_64-linux";
              specialArgs = {
                inherit
                  inputs
                  self
                  ;
              };

              modules = [
                "${self}/isla/"
                inputs.chaotic.nixosModules.default
                inputs.stylix.nixosModules.stylix
                inputs.sops-nix.nixosModules.sops
                inputs.disko.nixosModules.disko
                inputs.home-manager.nixosModules.home-manager
                inputs.lanzaboote.nixosModules.lanzaboote
                inputs.nix-index-database.nixosModules.nix-index
                inputs.nix-bwrapper.nixosModules.default
                inputs.nix-mineral.nixosModules.nix-mineral
              ];
            };

            # homelab
            "viola" = inputs.nixpkgs.lib.nixosSystem {
              system = "x86_64-linux";
              specialArgs = {
                inherit
                  inputs
                  self
                  ;
              };

              modules = [
                "${self}/viola"
                inputs.chaotic.nixosModules.default
                inputs.stylix.nixosModules.stylix
                inputs.sops-nix.nixosModules.sops
                inputs.disko.nixosModules.disko
                inputs.lanzaboote.nixosModules.lanzaboote
                inputs.home-manager.nixosModules.default
                inputs.nix-index-database.nixosModules.nix-index
                inputs.nix-mineral.nixosModules.nix-mineral
              ];
            };

            # WSL2
            "wanda" = inputs.nixpkgs.lib.nixosSystem {
              system = "x86_64-linux";
              specialArgs = {
                inherit
                  inputs
                  self
                  ;
              };

              modules = [
                "${self}/wanda/"
                inputs.nixos-wsl.nixosModules.default
                inputs.stylix.nixosModules.stylix
                inputs.home-manager.nixosModules.default
                inputs.sops-nix.nixosModules.sops
                inputs.nix-index-database.nixosModules.nix-index
                inputs.nix-bwrapper.nixosModules.default
                inputs.nix-mineral.nixosModules.nix-mineral
              ];
            };

            # custom ISO
            "florence" = inputs.nixpkgs.lib.nixosSystem {
              system = "x86_64-linux";
              specialArgs = {
                inherit
                  inputs
                  self
                  ;
              };

              modules = [
                "${self}/florence/"
              ];
            };
          }
          // kyraStack;
        # few words about kyraStack:
        # it's my little fleet, 5 identical VPSes
        # really nice that all of them are 2 vCPU 2GB
        # tho ssd/nvme/hdd memory is nothing important
        # and being KVM VPS / pure VPS too

        # home-manager
        homeConfigurations = {
          "hand7s" = inputs.home-manager.lib.homeManagerConfiguration {
            pkgs = inputs.nixpkgs.legacyPackages.x86_64-linux;
            extraSpecialArgs = {
              osConfig.networking.hostName = "";
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
              inputs.stylix.homeModules.stylix
            ];
          };
        };
      };

      perSystem = {
        config,
        pkgs,
        ...
      }: {
        # numtide/treefmt-nix, treefmt integrated into nix
        treefmt = {
          flakeFormatter = true;
          flakeCheck = true;

          programs = {
            "alejandra" = {
              enable = true;
              priority = 1;
              includes = [
                "*.nix"
              ];
            };

            "statix" = {
              enable = true;
              priority = 1;
              includes = [
                "*.nix"
              ];

              disabled-lints = [
                "empty_pattern"
              ];
            };

            "deadnix" = {
              enable = true;
              priority = 1;
              includes = [
                "*.nix"
              ];
            };
          };

          settings = {
            global = {
              on-unmatched = "warn";
              excludes = [
                "secrets/*"
                ".sops.yaml"
                ".gitignore"
              ];
            };
          };
        };

        # cachix/git-hooks-nix, pre-commit-hooks integrated into nix
        pre-commit = {
          check = {
            enable = true;
          };

          settings = {
            enable = true;
            package = pkgs.prek;
            gitPackage = pkgs.git;

            hooks = {
              "alejandra" = {
                enable = true;
                settings = {
                  verbosity = "quiet";
                  check = true;
                };
              };

              "deadnix" = {
                enable = true;
                settings = {
                  edit = false;
                };
              };

              "statix" = {
                enable = true;
              };
            };
          };
        };

        # cachix/devenv, basically a devShells, even better than numtide/devshells
        devenv = {
          shells = {
            "default" = {
              enterShell = config.pre-commit.shellHook;

              devenv = {
                root = toString /home/hand7s/Projects/flake;
              };

              packages =
                [
                  pkgs.just
                  config.treefmt.build.wrapper
                ]
                ++ config.pre-commit.settings.enabledPackages;
            };
          };
        };

        # synapdeck/github-actions-nix, declaretive gha
        githubActions = {
          enable = true;

          workflows = {
            "flake_update" = {
              name = "flake lock updater";
              on = {
                workflowDispatch = {};
                schedule = [
                  {
                    cron = "0 0 * * *";
                  }
                ];
              };

              jobs = {
                "locking" = {
                  name = "flake.lock update";
                  runsOn = "ubuntu-latest";
                  continueOnError = false;
                  permissions = "write-all";
                  steps = [
                    {
                      name = "checkout";
                      uses = "actions/checkout@v6";
                    }

                    {
                      name = "nix install";
                      uses = "DeterminateSystems/nix-installer-action@v21";
                    }

                    {
                      name = "flake.lock check";
                      uses = "DeterminateSystems/flake-checker-action@v12";
                      with_ = {
                        fail-mode = true;
                      };
                    }

                    {
                      name = "flake.lock update";
                      uses = "DeterminateSystems/update-flake-lock@v28";
                      with_ = {
                        pr-title = "Update `flake.lock` GitHub Action";
                        pr-assignees = "s0me1newithhand7s";
                        pr-reviewers = "s0me1newithhand7s";
                        pr-lables = ''
                          "CI/CD"
                        '';
                      };
                    }
                  ];
                };
              };
            };

            "fmt_run" = {
              name = "flake_format";
              on = {
                workflowDispatch = {};
                push = {};

                workflowDispatch = {
                  types = [
                    "opened"
                    "edited"
                    "synchronize"
                    "reopened"
                  ];
                };
              };

              jobs = {
                "fmt" = {
                  runsOn = "ubuntu-latest";
                  continueOnError = false;
                  permissions = "write-all";
                  steps = [
                    {
                      name = "checkout";
                      uses = "actions/checkout@v6";
                    }

                    {
                      name = "nix install";
                      uses = "DeterminateSystems/nix-installer-action@v21";
                    }

                    {
                      name = "flake.lock check";
                      uses = "DeterminateSystems/flake-checker-action@v12";
                      with_ = {
                        fail-mode = true;
                      };
                    }

                    {
                      name = "formatter run";
                      run = ''
                        nix develop -c prek run -a
                      '';
                    }
                  ];
                };
              };
            };
          };
        };
      };
    };
}
