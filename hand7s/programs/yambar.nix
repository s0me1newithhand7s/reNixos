{
    config,
    lib,
    ...
}: {
    programs = {
        yambar = {
            enable = lib.mkIf (config.home.gui.sessionType == "Sway") true;

            settings = {
                bar = {
                    height = 28;
                    location = "bottom";
                    spacing = 10;
                    font = "Nerd Hack Font:pixelsize=16";
                    foreground = "ffffffff";
                    background = "111111cc";
                    border = {
                        width = 2;
                        color = "999999cc";
                    };

                    left = [
                        {
                            i3 = {
                                anchors = [
                                    {
                                        string = {
                                            margin = 5;
                                            on-click = "swaymsg --quiet workspace {name}";
                                        };
                                    }

                                    {
                                        string = {
                                            text = "? {name}";
                                            "<<" = {
                                                margin = 5;
                                                on-click = "swaymsg --quiet workspace {name}";
                                            };
                                        };
                                    }

                                    {
                                        string = {
                                            text = "";
                                            font = "Nerd Hack Font:style=solid:pixelsize=14";
                                            "<<" = {
                                                margin = 5;
                                                on-click = "swaymsg --quiet workspace {name}";
                                            };
                                        };
                                    }

                                    {
                                        string = {
                                            text = "";
                                            font = "Nerd Hack Font:pixelsize=16";
                                            "<<" = {
                                                margin = 5;
                                                on-click = "swaymsg --quiet workspace {name}";
                                            };
                                        };
                                    }

                                    {
                                        string = {
                                            text = "";
                                            font = "Nerd Hack Font:style=solid:pixelsize=14";
                                            "<<" = {
                                                margin = 5;
                                                on-click = "swaymsg --quiet workspace {name}";
                                            };
                                        };
                                    }

                                    {
                                        string = {
                                            text = "";
                                            font = "Nerd Hack Font:style=solid:pixelsize=14";
                                            "<<" = {
                                                margin = 5;
                                                on-click = "swaymsg --quiet workspace {name}";
                                            };
                                        };
                                    }

                                    {
                                        string = {
                                            text = "";
                                            font = "Nerd Hack Font:style=solid:pixelsize=14";
                                            "<<" = {
                                                margin = 5;
                                                on-click = "swaymsg --quiet workspace {name}";
                                            };
                                        };
                                    }

                                    {
                                        focused = {
                                            deco = {
                                                stack = [
                                                    {
                                                        background = {
                                                            color = "ffa0a04c";
                                                        };
                                                    }

                                                    {
                                                        "<<" = {
                                                            underline = {
                                                                size = 2;
                                                                color = "ff0000ff";
                                                            };
                                                        };
                                                    }
                                                ];
                                            };
                                        };
                                    }

                                    {
                                        invisible = {
                                            foreground = "ffffff55";
                                        };
                                    }

                                    {
                                        urgent = {
                                            foreground = "000000ff";
                                            deco = {
                                                stack = [
                                                    {
                                                        background = {
                                                            color = "bc2b3fff";
                                                        };
                                                    }
                                                    {
                                                        "<<" = {
                                                            underline = {
                                                                size = 2;
                                                                color = "ff0000ff";
                                                            };
                                                        };
                                                    }
                                                ];
                                            };
                                        };
                                    }

                                    {
                                        map = {
                                            default = [
                                                {
                                                    string = {
                                                        margin = 5;
                                                        text = "{mode}";
                                                        deco = {
                                                            background = {
                                                                color = "cc421dff";
                                                            };
                                                        };
                                                    };
                                                }

                                                {
                                                    empty = {
                                                        right-margin = 7;
                                                    };
                                                }
                                            ];

                                            conditions = {
                                                "mode == default" = {
                                                    empty = {};
                                                };
                                            };
                                        };
                                    }
                                ];

                                content = {
                                    "" = {
                                        map = {
                                            conditions = {
                                                "state == focused" = {
                                                    string = {
                                                        "<<" = [
                                                            {
                                                                text = "? {name}";
                                                                "<<" = {
                                                                    margin = 5;
                                                                    on-click = "swaymsg --quiet workspace {name}";
                                                                };
                                                            }

                                                            {
                                                                deco = {
                                                                    stack = [
                                                                        {
                                                                            background = {
                                                                                color = "ffa0a04c";
                                                                            };
                                                                        }

                                                                        {
                                                                            "<<" = {
                                                                                underline = {
                                                                                    size = 2;
                                                                                    color = "ff0000ff";
                                                                                };
                                                                            };
                                                                        }
                                                                    ];
                                                                };
                                                            }
                                                        ];
                                                    };
                                                };

                                                "state == unfocused" = {
                                                    string = {
                                                        "<<" = {
                                                            text = "? {name}";
                                                            "<<" = {
                                                                margin = 5;
                                                                on-click = "swaymsg --quiet workspace {name}";
                                                            };
                                                        };
                                                    };
                                                };

                                                "state == invisible" = {
                                                    string = {
                                                        "<<" = [
                                                            {
                                                                text = "? {name}";
                                                                "<<" = {
                                                                    margin = 5;
                                                                    on-click = "swaymsg --quiet workspace {name}";
                                                                };
                                                            }

                                                            {
                                                                foreground = "ffffff55";
                                                            }
                                                        ];
                                                    };
                                                };

                                                "state == urgent" = {
                                                    string = {
                                                        "<<" = [
                                                            {
                                                                text = "? {name}";
                                                                "<<" = {
                                                                    margin = 5;
                                                                    on-click = "swaymsg --quiet workspace {name}";
                                                                };
                                                            }

                                                            {
                                                                foreground = "000000ff";
                                                                deco = {
                                                                    stack = [
                                                                        {
                                                                            background = {
                                                                                color = "bc2b3fff";
                                                                            };
                                                                        }

                                                                        {
                                                                            "<<" = {
                                                                                underline = {
                                                                                    size = 2;
                                                                                    color = "ff0000ff";
                                                                                };
                                                                            };
                                                                        }
                                                                    ];
                                                                };
                                                            }
                                                        ];
                                                    };
                                                };
                                            };
                                        };
                                    };

                                    main = {
                                        map = {
                                            conditions = {
                                                "state == focused" = {
                                                    string = {
                                                        "<<" = [
                                                            {
                                                                text = "";
                                                                font = "Nerd Hack Font:style=solid:pixelsize=14";
                                                                "<<" = {
                                                                    margin = 5;
                                                                    on-click = "swaymsg --quiet workspace {name}";
                                                                };
                                                            }

                                                            {
                                                                deco = {
                                                                    stack = [
                                                                        {
                                                                            background = {
                                                                                color = "ffa0a04c";
                                                                            };
                                                                        }

                                                                        {
                                                                            "<<" = {
                                                                                underline = {
                                                                                    size = 2;
                                                                                    color = "ff0000ff";
                                                                                };
                                                                            };
                                                                        }
                                                                    ];
                                                                };
                                                            }
                                                        ];
                                                    };
                                                };

                                                "state == unfocused" = {
                                                    string = {
                                                        "<<" = {
                                                            text = "";
                                                            font = "Nerd Hack Font:style=solid:pixelsize=14";
                                                            "<<" = {
                                                                margin = 5;
                                                                on-click = "swaymsg --quiet workspace {name}";
                                                            };
                                                        };
                                                    };
                                                };

                                                "state == invisible" = {
                                                    string = {
                                                        "<<" = [
                                                            {
                                                                text = "";
                                                                font = "Nerd Hack Font:style=solid:pixelsize=14";
                                                                "<<" = {
                                                                    margin = 5;
                                                                    on-click = "swaymsg --quiet workspace {name}";
                                                                };
                                                            }

                                                            {
                                                                foreground = "ffffff55";
                                                            }
                                                        ];
                                                    };
                                                };

                                                "state == urgent" = {
                                                    string = {
                                                        "<<" = [
                                                            {
                                                                text = "";
                                                                font = "Nerd Hack Font:style=solid:pixelsize=14";
                                                                "<<" = {
                                                                    margin = 5;
                                                                    on-click = "swaymsg --quiet workspace {name}";
                                                                };
                                                            }

                                                            {
                                                                foreground = "000000ff";
                                                                deco = {
                                                                    stack = [
                                                                        {
                                                                            background = {
                                                                                color = "bc2b3fff";
                                                                            };
                                                                        }

                                                                        {
                                                                            "<<" = {
                                                                                underline = {
                                                                                    size = 2;
                                                                                    color = "ff0000ff";
                                                                                };
                                                                            };
                                                                        }
                                                                    ];
                                                                };
                                                            }
                                                        ];
                                                    };
                                                };
                                            };
                                        };
                                    };

                                    surfing = {
                                        map = {
                                            conditions = {
                                                "state == focused" = {
                                                    string = {
                                                        "<<" = [
                                                            {
                                                                text = "";
                                                                font = "Nerd Hack Font:pixelsize=16";
                                                                "<<" = {
                                                                    margin = 5;
                                                                    on-click = "swaymsg --quiet workspace {name}";
                                                                };
                                                            }

                                                            {
                                                                deco = {
                                                                    stack = [
                                                                        {
                                                                            background = {
                                                                                color = "ffa0a04c";
                                                                            };
                                                                        }

                                                                        {
                                                                            "<<" = {
                                                                                underline = {
                                                                                    size = 2;
                                                                                    color = "ff0000ff";
                                                                                };
                                                                            };
                                                                        }
                                                                    ];
                                                                };
                                                            }
                                                        ];
                                                    };
                                                };

                                                "state == unfocused" = {
                                                    string = {
                                                        "<<" = {
                                                            text = "";
                                                            font = "Nerd Hack Font:pixelsize=16";
                                                            "<<" = {
                                                                margin = 5;
                                                                on-click = "swaymsg --quiet workspace {name}";
                                                            };
                                                        };
                                                    };
                                                };

                                                "state == invisible" = {
                                                    string = {
                                                        "<<" = [
                                                            {
                                                                text = "";
                                                                font = "Nerd Hack Font:pixelsize=16";
                                                                "<<" = {
                                                                    margin = 5;
                                                                    on-click = "swaymsg --quiet workspace {name}";
                                                                };
                                                            }

                                                            {
                                                                foreground = "ffffff55";
                                                            }
                                                        ];
                                                    };
                                                };

                                                "state == urgent" = {
                                                    string = {
                                                        "<<" = [
                                                            {
                                                                text = "";
                                                                font = "Nerd Hack Font:pixelsize=16";
                                                                "<<" = {
                                                                    margin = 5;
                                                                    on-click = "swaymsg --quiet workspace {name}";
                                                                };
                                                            }

                                                            {
                                                                foreground = "000000ff";
                                                                deco = {
                                                                    stack = [
                                                                        {
                                                                            background = {
                                                                                color = "bc2b3fff";
                                                                            };
                                                                        }

                                                                        {
                                                                            "<<" = {
                                                                                underline = {
                                                                                    size = 2;
                                                                                    color = "ff0000ff";
                                                                                };
                                                                            };
                                                                        }
                                                                    ];
                                                                };
                                                            }
                                                        ];
                                                    };
                                                };
                                            };
                                        };
                                    };

                                    misc = {
                                        map = {
                                            conditions = {
                                                "state == focused" = {
                                                    string = {
                                                        "<<" = [
                                                            {
                                                                text = "";
                                                                font = "Nerd Hack Font:style=solid:pixelsize=14";
                                                                "<<" = {
                                                                    margin = 5;
                                                                    on-click = "swaymsg --quiet workspace {name}";
                                                                };
                                                            }

                                                            {
                                                                deco = {
                                                                    stack = [
                                                                        {
                                                                            background = {
                                                                                color = "ffa0a04c";
                                                                            };
                                                                        }

                                                                        {
                                                                            "<<" = {
                                                                                underline = {
                                                                                    size = 2;
                                                                                    color = "ff0000ff";
                                                                                };
                                                                            };
                                                                        }
                                                                    ];
                                                                };
                                                            }
                                                        ];
                                                    };
                                                };

                                                "state == unfocused" = {
                                                    string = {
                                                        "<<" = {
                                                            text = "";
                                                            font = "Nerd Hack Font:style=solid:pixelsize=14";
                                                            "<<" = {
                                                                margin = 5;
                                                                on-click = "swaymsg --quiet workspace {name}";
                                                            };
                                                        };
                                                    };
                                                };

                                                "state == invisible" = {
                                                    string = {
                                                        "<<" = [
                                                            {
                                                                text = "";
                                                                font = "Nerd Hack Font:style=solid:pixelsize=14";
                                                                "<<" = {
                                                                    margin = 5;
                                                                    on-click = "swaymsg --quiet workspace {name}";
                                                                };
                                                            }

                                                            {
                                                                foreground = "ffffff55";
                                                            }
                                                        ];
                                                    };
                                                };

                                                "state == urgent" = {
                                                    string = {
                                                        "<<" = [
                                                            {
                                                                text = "";
                                                                font = "Nerd Hack Font:style=solid:pixelsize=14";
                                                                "<<" = {
                                                                    margin = 5;
                                                                    on-click = "swaymsg --quiet workspace {name}";
                                                                };
                                                            }

                                                            {
                                                                foreground = "000000ff";
                                                                deco = {
                                                                    stack = [
                                                                        {
                                                                            background = {
                                                                                color = "bc2b3fff";
                                                                            };
                                                                        }

                                                                        {
                                                                            "<<" = {
                                                                                underline = {
                                                                                    size = 2;
                                                                                    color = "ff0000ff";
                                                                                };
                                                                            };
                                                                        }
                                                                    ];
                                                                };
                                                            }
                                                        ];
                                                    };
                                                };
                                            };
                                        };
                                    };

                                    mail = {
                                        map = {
                                            conditions = {
                                                "state == focused" = {
                                                    string = {
                                                        "<<" = [
                                                            {
                                                                text = "";
                                                                font = "Nerd Hack Font:style=solid:pixelsize=14";
                                                                "<<" = {
                                                                    margin = 5;
                                                                    on-click = "swaymsg --quiet workspace {name}";
                                                                };
                                                            }

                                                            {
                                                                deco = {
                                                                    stack = [
                                                                        {
                                                                            background = {
                                                                                color = "ffa0a04c";
                                                                            };
                                                                        }

                                                                        {
                                                                            "<<" = {
                                                                                underline = {
                                                                                    size = 2;
                                                                                    color = "ff0000ff";
                                                                                };
                                                                            };
                                                                        }
                                                                    ];
                                                                };
                                                            }
                                                        ];
                                                    };
                                                };

                                                "state == unfocused" = {
                                                    string = {
                                                        "<<" = {
                                                            text = "";
                                                            font = "Nerd Hack Font:style=solid:pixelsize=14";
                                                            "<<" = {
                                                                margin = 5;
                                                                on-click = "swaymsg --quiet workspace {name}";
                                                            };
                                                        };
                                                    };
                                                };

                                                "state == invisible" = {
                                                    string = {
                                                        "<<" = [
                                                            {
                                                                text = "";
                                                                font = "Nerd Hack Font:style=solid:pixelsize=14";
                                                                "<<" = {
                                                                    margin = 5;
                                                                    on-click = "swaymsg --quiet workspace {name}";
                                                                };
                                                            }

                                                            {
                                                                foreground = "ffffff55";
                                                            }
                                                        ];
                                                    };
                                                };

                                                "state == urgent" = {
                                                    string = {
                                                        "<<" = [
                                                            {
                                                                text = "";
                                                                font = "Nerd Hack Font:style=solid:pixelsize=14";
                                                                "<<" = {
                                                                    margin = 5;
                                                                    on-click = "swaymsg --quiet workspace {name}";
                                                                };
                                                            }

                                                            {
                                                                foreground = "000000ff";
                                                                deco = {
                                                                    stack = [
                                                                        {
                                                                            background = {
                                                                                color = "bc2b3fff";
                                                                            };
                                                                        }

                                                                        {
                                                                            "<<" = {
                                                                                underline = {
                                                                                    size = 2;
                                                                                    color = "ff0000ff";
                                                                                };
                                                                            };
                                                                        }
                                                                    ];
                                                                };
                                                            }
                                                        ];
                                                    };
                                                };
                                            };
                                        };
                                    };

                                    music = {
                                        map = {
                                            conditions = {
                                                "state == focused" = {
                                                    string = {
                                                        "<<" = [
                                                            {
                                                                text = "";
                                                                font = "Nerd Hack Font:style=solid:pixelsize=14";
                                                                "<<" = {
                                                                    margin = 5;
                                                                    on-click = "swaymsg --quiet workspace {name}";
                                                                };
                                                            }

                                                            {
                                                                deco = {
                                                                    stack = [
                                                                        {
                                                                            background = {
                                                                                color = "ffa0a04c";
                                                                            };
                                                                        }
                                                                        {
                                                                            "<<" = {
                                                                                underline = {
                                                                                    size = 2;
                                                                                    color = "ff0000ff";
                                                                                };
                                                                            };
                                                                        }
                                                                    ];
                                                                };
                                                            }
                                                        ];
                                                    };
                                                };

                                                "state == unfocused" = {
                                                    string = {
                                                        "<<" = {
                                                            text = "";
                                                            font = "Nerd Hack Font:style=solid:pixelsize=14";
                                                            "<<" = {
                                                                margin = 5;
                                                                on-click = "swaymsg --quiet workspace {name}";
                                                            };
                                                        };
                                                    };
                                                };

                                                "state == invisible" = {
                                                    string = {
                                                        "<<" = [
                                                            {
                                                                text = "";
                                                                font = "Nerd Hack Font:style=solid:pixelsize=14";
                                                                "<<" = {
                                                                    margin = 5;
                                                                    on-click = "swaymsg --quiet workspace {name}";
                                                                };
                                                            }
                                                            {
                                                                foreground = "ffffff55";
                                                            }
                                                        ];
                                                    };
                                                };

                                                "state == urgent" = {
                                                    string = {
                                                        "<<" = [
                                                            {
                                                                text = "";
                                                                font = "Nerd Hack Font:style=solid:pixelsize=14";
                                                                "<<" = {
                                                                    margin = 5;
                                                                    on-click = "swaymsg --quiet workspace {name}";
                                                                };
                                                            }

                                                            {
                                                                foreground = "000000ff";
                                                                deco = {
                                                                    stack = [
                                                                        {
                                                                            background = {
                                                                                color = "bc2b3fff";
                                                                            };
                                                                        }

                                                                        {
                                                                            "<<" = {
                                                                                underline = {
                                                                                    size = 2;
                                                                                    color = "ff0000ff";
                                                                                };
                                                                            };
                                                                        }
                                                                    ];
                                                                };
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

                        {
                            foreign-toplevel = {
                                content = {
                                    map = {
                                        conditions = {
                                            "~activated" = {
                                                empty = {};
                                            };

                                            activated = [
                                                {
                                                    string = {
                                                        text = "{app-id}";
                                                        foreground = "ffa0a0ff";
                                                    };
                                                }

                                                {
                                                    string = {
                                                        text = ": {title}";
                                                    };
                                                }
                                            ];
                                        };
                                    };
                                };
                            };
                        }
                    ];

                    center = [
                        {
                            mpd = {
                                host = "/run/mpd/socket";
                                anchors = {
                                    list = {
                                        spacing = 0;
                                        items = [
                                            {
                                                map = {
                                                    conditions = {
                                                        "state == playing" = {
                                                            string = {
                                                                text = "{artist}";
                                                            };
                                                        };

                                                        "state == paused" = {
                                                            string = {
                                                                text = "{artist}";
                                                                foreground = "ffffff66";
                                                            };
                                                        };
                                                    };
                                                };
                                            }

                                            {
                                                string = {
                                                    text = " | ";
                                                    foreground = "ffffff66";
                                                };
                                            }

                                            {
                                                map = {
                                                    conditions = {
                                                        "state == playing" = {
                                                            string = {
                                                                text = "{album}";
                                                            };
                                                        };

                                                        "state == paused" = {
                                                            string = {
                                                                text = "{album}";
                                                                foreground = "ffffff66";
                                                            };
                                                        };
                                                    };
                                                };
                                            }

                                            {
                                                string = {
                                                    text = " | ";
                                                    foreground = "ffffff66";
                                                };
                                            }

                                            {
                                                map = {
                                                    conditions = {
                                                        "state == playing" = {
                                                            string = {
                                                                text = "{title}";
                                                                foreground = "ffa0a0ff";
                                                            };
                                                        };

                                                        "state == paused" = {
                                                            string = {
                                                                text = "{title}";
                                                                foreground = "ffffff66";
                                                            };
                                                        };
                                                    };
                                                };
                                            }
                                        ];
                                    };
                                };

                                content = {
                                    map = {
                                        margin = 10;
                                        conditions = {
                                            "state == offline" = {
                                                string = {
                                                    text = "offline";
                                                    foreground = "ff0000ff";
                                                };
                                            };

                                            "state == stopped" = {
                                                string = {
                                                    text = "stopped";
                                                };
                                            };

                                            "state == paused" = {
                                                list = {
                                                    spacing = 0;
                                                    items = [
                                                        {
                                                            map = {
                                                                conditions = {
                                                                    "state == playing" = {
                                                                        string = {
                                                                            text = "{artist}";
                                                                        };
                                                                    };

                                                                    "state == paused" = {
                                                                        string = {
                                                                            text = "{artist}";
                                                                            foreground = "ffffff66";
                                                                        };
                                                                    };
                                                                };
                                                            };
                                                        }

                                                        {
                                                            string = {
                                                                text = " | ";
                                                                foreground = "ffffff66";
                                                            };
                                                        }

                                                        {
                                                            map = {
                                                                conditions = {
                                                                    "state == playing" = {
                                                                        string = {
                                                                            text = "{album}";
                                                                        };
                                                                    };

                                                                    "state == paused" = {
                                                                        string = {
                                                                            text = "{album}";
                                                                            foreground = "ffffff66";
                                                                        };
                                                                    };
                                                                };
                                                            };
                                                        }

                                                        {
                                                            string = {
                                                                text = " | ";
                                                                foreground = "ffffff66";
                                                            };
                                                        }

                                                        {
                                                            map = {
                                                                conditions = {
                                                                    "state == playing" = {
                                                                        string = {
                                                                            text = "{title}";
                                                                            foreground = "ffa0a0ff";
                                                                        };
                                                                    };

                                                                    "state == paused" = {
                                                                        string = {
                                                                            text = "{title}";
                                                                            foreground = "ffffff66";
                                                                        };
                                                                    };
                                                                };
                                                            };
                                                        }
                                                    ];
                                                };
                                            };

                                            "state == playing" = {
                                                list = {
                                                    spacing = 0;
                                                    items = [
                                                        {
                                                            map = {
                                                                conditions = {
                                                                    "state == playing" = {
                                                                        string = {
                                                                            text = "{artist}";
                                                                        };
                                                                    };

                                                                    "state == paused" = {
                                                                        string = {
                                                                            text = "{artist}";
                                                                            foreground = "ffffff66";
                                                                        };
                                                                    };
                                                                };
                                                            };
                                                        }

                                                        {
                                                            string = {
                                                                text = " | ";
                                                                foreground = "ffffff66";
                                                            };
                                                        }

                                                        {
                                                            map = {
                                                                conditions = {
                                                                    "state == playing" = {
                                                                        string = {
                                                                            text = "{album}";
                                                                        };
                                                                    };
                                                                    "state == paused" = {
                                                                        string = {
                                                                            text = "{album}";
                                                                            foreground = "ffffff66";
                                                                        };
                                                                    };
                                                                };
                                                            };
                                                        }

                                                        {
                                                            string = {
                                                                text = " | ";
                                                                foreground = "ffffff66";
                                                            };
                                                        }

                                                        {
                                                            map = {
                                                                conditions = {
                                                                    "state == playing" = {
                                                                        string = {
                                                                            text = "{title}";
                                                                            foreground = "ffa0a0ff";
                                                                        };
                                                                    };
                                                                    "state == paused" = {
                                                                        string = {
                                                                            text = "{title}";
                                                                            foreground = "ffffff66";
                                                                        };
                                                                    };
                                                                };
                                                            };
                                                        }
                                                    ];
                                                };
                                            };
                                        };
                                    };
                                };
                            };
                        }
                    ];

                    right = [
                        {
                            removables = {
                                spacing = 5;

                                anchors = {
                                    drive = {
                                        text = "";
                                        font = "Nerd Hack Font:style=solid:pixelsize=14";
                                    };

                                    optical = {
                                        text = "";
                                        font = "Nerd Hack Font:style=solid:pixelsize=14";
                                    };
                                };

                                content = {
                                    map = {
                                        conditions = {
                                            "~mounted" = {
                                                map = {
                                                    on-click = "udisksctl mount -b {device}";
                                                    conditions = {
                                                        "~optical" = [
                                                            {
                                                                string = {
                                                                    text = "";
                                                                    font = "Nerd Hack Font:style=solid:pixelsize=14";
                                                                };
                                                            }

                                                            {
                                                                string = {
                                                                    text = "{label}";
                                                                };
                                                            }
                                                        ];

                                                        optical = [
                                                            {
                                                                string = {
                                                                    text = "";
                                                                    font = "Nerd Hack Font:style=solid:pixelsize=14";
                                                                };
                                                            }

                                                            {
                                                                string = {
                                                                    text = "{label}";
                                                                };
                                                            }
                                                        ];
                                                    };
                                                };
                                            };

                                            mounted = {
                                                map = {
                                                    on-click = "udisksctl unmount -b {device}";
                                                    conditions = {
                                                        "~optical" = [
                                                            {
                                                                string = {
                                                                    "<<" = {
                                                                        text = "";
                                                                        font = "Nerd Hack Font:style=solid:pixelsize=14";
                                                                    };
                                                                    deco = {
                                                                        underline = {
                                                                            size = 2;
                                                                            color = "ff0000ff";
                                                                        };
                                                                    };
                                                                };
                                                            }

                                                            {
                                                                string = {
                                                                    text = "{label}";
                                                                };
                                                            }
                                                        ];

                                                        optical = [
                                                            {
                                                                string = {
                                                                    "<<" = {
                                                                        text = "";
                                                                        font = "Nerd Hack Font:style=solid:pixelsize=14";
                                                                    };

                                                                    deco = {
                                                                        underline = {
                                                                            size = 2;
                                                                            color = "ff0000ff";
                                                                        };
                                                                    };
                                                                };
                                                            }

                                                            {
                                                                string = {
                                                                    text = "{label}";
                                                                };
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

                        {
                            sway-xkb = {
                                identifiers = ["1:1:AT_Translated_Set_2_keyboard"];
                                content = [
                                    {
                                        string = {
                                            text = "";
                                            font = "Nerd Hack Font:style=solid:pixelsize=14";
                                        };
                                    }
                                    {
                                        string = {
                                            text = "{layout}";
                                        };
                                    }
                                ];
                            };
                        }

                        {
                            network = {
                                content = {
                                    map = {
                                        default = {
                                            empty = {};
                                        };

                                        conditions = {
                                            "name == enp1s0" = {
                                                map = {
                                                    conditions = {
                                                        "~carrier" = {
                                                            empty = {};
                                                        };

                                                        carrier = {
                                                            map = {
                                                                default = {
                                                                    string = {
                                                                        text = "";
                                                                        font = "Nerd Hack Font:style=solid:pixelsize=14";
                                                                        foreground = "ffffff66";
                                                                    };
                                                                };

                                                                conditions = {
                                                                    "state == up && ipv4 != \"\"" = {
                                                                        string = {
                                                                            text = "";
                                                                            font = "Nerd Hack Font:style=solid:pixelsize=14";
                                                                        };
                                                                    };
                                                                };
                                                            };
                                                        };
                                                    };
                                                };
                                            };
                                        };
                                    };
                                };
                            };
                        }

                        {
                            network = {
                                poll-interval = 1000;
                                content = {
                                    map = {
                                        default = {
                                            empty = {};
                                        };

                                        conditions = {
                                            "name == wlp2s0" = {
                                                map = {
                                                    default = {
                                                        string = {
                                                            text = "";
                                                            font = "Nerd Hack Font:style=solid:pixelsize=14";
                                                            foreground = "ffffff66";
                                                        };
                                                    };

                                                    conditions = {
                                                        "state == down" = {
                                                            string = {
                                                                text = "";
                                                                font = "Nerd Hack Font:style=solid:pixelsize=14";
                                                                foreground = "ff0000ff";
                                                            };
                                                        };

                                                        "state == up" = {
                                                            map = {
                                                                default = [
                                                                    {
                                                                        string = {
                                                                            text = "";
                                                                            font = "Nerd Hack Font:style=solid:pixelsize=14";
                                                                        };
                                                                    }

                                                                    {
                                                                        string = {
                                                                            text = "{ssid} {dl-speed:mb}/{ul-speed:mb} Mb/s";
                                                                        };
                                                                    }
                                                                ];

                                                                conditions = {
                                                                    "ipv4 == \"\"" = [
                                                                        {
                                                                            string = {
                                                                                text = "";
                                                                                font = "Nerd Hack Font:style=solid:pixelsize=14";
                                                                                foreground = "ffffff66";
                                                                            };
                                                                        }
                                                                        {
                                                                            string = {
                                                                                text = "{ssid} {dl-speed:mb}/{ul-speed:mb} Mb/s";
                                                                                foreground = "ffffff66";
                                                                            };
                                                                        }
                                                                    ];
                                                                };
                                                            };
                                                        };
                                                    };
                                                };
                                            };
                                        };
                                    };
                                };
                            };
                        }

                        {
                            alsa = {
                                card = "hw:PCH";
                                mixer = "Master";
                                content = {
                                    map = {
                                        conditions = {
                                            "~online" = {
                                                string = {
                                                    text = "";
                                                    font = "Nerd Hack Font:style=solid:pixelsize=14";
                                                    foreground = "ff0000ff";
                                                };
                                            };

                                            online = {
                                                map = {
                                                    on-click = "/bin/sh -c \"amixer -q sset Speaker unmute && amixer -q sset Headphone unmute && amixer -q sset Master toggle\"";
                                                    conditions = {
                                                        muted = {
                                                            string = {
                                                                text = "";
                                                                font = "Nerd Hack Font:style=solid:pixelsize=14";
                                                                foreground = "ffffff66";
                                                            };
                                                        };

                                                        "~muted" = {
                                                            ramp = {
                                                                tag = "percent";
                                                                items = [
                                                                    {
                                                                        string = {
                                                                            text = "";
                                                                            font = "Nerd Hack Font:style=solid:pixelsize=14";
                                                                        };
                                                                    }

                                                                    {
                                                                        string = {
                                                                            text = "";
                                                                            font = "Nerd Hack Font:style=solid:pixelsize=14";
                                                                        };
                                                                    }

                                                                    {
                                                                        string = {
                                                                            text = "";
                                                                            font = "Nerd Hack Font:style=solid:pixelsize=14";
                                                                        };
                                                                    }
                                                                ];
                                                            };
                                                        };
                                                    };
                                                };
                                            };
                                        };
                                    };
                                };
                            };
                        }

                        {
                            backlight = {
                                name = "intel_backlight";
                                content = [
                                    {
                                        string = {
                                            text = "";
                                            font = "Nerd Hack Font:style=solid:pixelsize=14";
                                        };
                                    }

                                    {
                                        string = {
                                            text = "{percent}%";
                                        };
                                    }
                                ];
                            };
                        }

                        {
                            battery = {
                                name = "BAT0";
                                poll-interval = 30000;
                                anchors = {
                                    discharging = {
                                        list = {
                                            items = [
                                                {
                                                    ramp = {
                                                        tag = "capacity";
                                                        items = [
                                                            {
                                                                string = {
                                                                    text = "";
                                                                    foreground = "ff0000ff";
                                                                    font = "Nerd Hack Font:style=solid:pixelsize=14";
                                                                };
                                                            }

                                                            {
                                                                string = {
                                                                    text = "";
                                                                    foreground = "ffa600ff";
                                                                    font = "Nerd Hack Font:style=solid:pixelsize=14";
                                                                };
                                                            }

                                                            {
                                                                string = {
                                                                    text = "";
                                                                    font = "Nerd Hack Font:style=solid:pixelsize=14";
                                                                };
                                                            }

                                                            {
                                                                string = {
                                                                    text = "";
                                                                    font = "Nerd Hack Font:style=solid:pixelsize=14";
                                                                };
                                                            }

                                                            {
                                                                string = {
                                                                    text = "";
                                                                    font = "Nerd Hack Font:style=solid:pixelsize=14";
                                                                };
                                                            }

                                                            {
                                                                string = {
                                                                    text = "";
                                                                    font = "Nerd Hack Font:style=solid:pixelsize=14";
                                                                };
                                                            }

                                                            {
                                                                string = {
                                                                    text = "";
                                                                    font = "Nerd Hack Font:style=solid:pixelsize=14";
                                                                };
                                                            }

                                                            {
                                                                string = {
                                                                    text = "";
                                                                    font = "Nerd Hack Font:style=solid:pixelsize=14";
                                                                };
                                                            }

                                                            {
                                                                string = {
                                                                    text = "";
                                                                    font = "Nerd Hack Font:style=solid:pixelsize=14";
                                                                };
                                                            }
                                                            {
                                                                string = {
                                                                    text = "";
                                                                    foreground = "00ff00ff";
                                                                    font = "Nerd Hack Font:style=solid:pixelsize=14";
                                                                };
                                                            }
                                                        ];
                                                    };
                                                }

                                                {
                                                    string = {
                                                        text = "{capacity}% {estimate}";
                                                    };
                                                }
                                            ];
                                        };
                                    };
                                };

                                content = {
                                    map = {
                                        conditions = {
                                            "state == unknown" = {
                                                "<<" = {
                                                    list = {
                                                        items = [
                                                            {
                                                                ramp = {
                                                                    tag = "capacity";
                                                                    items = [
                                                                        {
                                                                            string = {
                                                                                text = "";
                                                                                foreground = "ff0000ff";
                                                                                font = "Nerd Hack Font:style=solid:pixelsize=14";
                                                                            };
                                                                        }

                                                                        {
                                                                            string = {
                                                                                text = "";
                                                                                foreground = "ffa600ff";
                                                                                font = "Nerd Hack Font:style=solid:pixelsize=14";
                                                                            };
                                                                        }

                                                                        {
                                                                            string = {
                                                                                text = "";
                                                                                font = "Nerd Hack Font:style=solid:pixelsize=14";
                                                                            };
                                                                        }

                                                                        {
                                                                            string = {
                                                                                text = "";
                                                                                font = "Nerd Hack Font:style=solid:pixelsize=14";
                                                                            };
                                                                        }

                                                                        {
                                                                            string = {
                                                                                text = "";
                                                                                font = "Nerd Hack Font:style=solid:pixelsize=14";
                                                                            };
                                                                        }

                                                                        {
                                                                            string = {
                                                                                text = "";
                                                                                font = "Nerd Hack Font:style=solid:pixelsize=14";
                                                                            };
                                                                        }

                                                                        {
                                                                            string = {
                                                                                text = "";
                                                                                font = "Nerd Hack Font:style=solid:pixelsize=14";
                                                                            };
                                                                        }

                                                                        {
                                                                            string = {
                                                                                text = "";
                                                                                font = "Nerd Hack Font:style=solid:pixelsize=14";
                                                                            };
                                                                        }

                                                                        {
                                                                            string = {
                                                                                text = "";
                                                                                font = "Nerd Hack Font:style=solid:pixelsize=14";
                                                                            };
                                                                        }

                                                                        {
                                                                            string = {
                                                                                text = "";
                                                                                foreground = "00ff00ff";
                                                                                font = "Nerd Hack Font:style=solid:pixelsize=14";
                                                                            };
                                                                        }
                                                                    ];
                                                                };
                                                            }

                                                            {
                                                                string = {
                                                                    text = "{capacity}% {estimate}";
                                                                };
                                                            }
                                                        ];
                                                    };
                                                };
                                            };

                                            "state == discharging" = {
                                                "<<" = {
                                                    list = {
                                                        items = [
                                                            {
                                                                ramp = {
                                                                    tag = "capacity";
                                                                    items = [
                                                                        {
                                                                            string = {
                                                                                text = "";
                                                                                foreground = "ff0000ff";
                                                                                font = "Nerd Hack Font:style=solid:pixelsize=14";
                                                                            };
                                                                        }

                                                                        {
                                                                            string = {
                                                                                text = "";
                                                                                foreground = "ffa600ff";
                                                                                font = "Nerd Hack Font:style=solid:pixelsize=14";
                                                                            };
                                                                        }

                                                                        {
                                                                            string = {
                                                                                text = "";
                                                                                font = "Nerd Hack Font:style=solid:pixelsize=14";
                                                                            };
                                                                        }

                                                                        {
                                                                            string = {
                                                                                text = "";
                                                                                font = "Nerd Hack Font:style=solid:pixelsize=14";
                                                                            };
                                                                        }

                                                                        {
                                                                            string = {
                                                                                text = "";
                                                                                font = "Nerd Hack Font:style=solid:pixelsize=14";
                                                                            };
                                                                        }

                                                                        {
                                                                            string = {
                                                                                text = "";
                                                                                font = "Nerd Hack Font:style=solid:pixelsize=14";
                                                                            };
                                                                        }

                                                                        {
                                                                            string = {
                                                                                text = "";
                                                                                font = "Nerd Hack Font:style=solid:pixelsize=14";
                                                                            };
                                                                        }

                                                                        {
                                                                            string = {
                                                                                text = "";
                                                                                font = "Nerd Hack Font:style=solid:pixelsize=14";
                                                                            };
                                                                        }

                                                                        {
                                                                            string = {
                                                                                text = "";
                                                                                font = "Nerd Hack Font:style=solid:pixelsize=14";
                                                                            };
                                                                        }

                                                                        {
                                                                            string = {
                                                                                text = "";
                                                                                foreground = "00ff00ff";
                                                                                font = "Nerd Hack Font:style=solid:pixelsize=14";
                                                                            };
                                                                        }
                                                                    ];
                                                                };
                                                            }

                                                            {
                                                                string = {
                                                                    text = "{capacity}% {estimate}";
                                                                };
                                                            }
                                                        ];
                                                    };
                                                };
                                            };

                                            "state == charging" = [
                                                {
                                                    string = {
                                                        text = "";
                                                        foreground = "00ff00ff";
                                                        font = "Nerd Hack Font:style=solid:pixelsize=14";
                                                    };
                                                }

                                                {
                                                    string = {
                                                        text = "{capacity}% {estimate}";
                                                    };
                                                }
                                            ];

                                            "state == full" = [
                                                {
                                                    string = {
                                                        text = "";
                                                        foreground = "00ff00ff";
                                                        font = "Nerd Hack Font:style=solid:pixelsize=14";
                                                    };
                                                }

                                                {
                                                    string = {
                                                        text = "{capacity}% full";
                                                    };
                                                }
                                            ];

                                            "state == \"not charging\"" = [
                                                {
                                                    ramp = {
                                                        tag = "capacity";
                                                        items = [
                                                            {
                                                                string = {
                                                                    text = " ";
                                                                    foreground = "ff0000ff";
                                                                    font = "Nerd Hack Font:style=solid:pixelsize=14";
                                                                };
                                                            }

                                                            {
                                                                string = {
                                                                    text = " ";
                                                                    foreground = "ffa600ff";
                                                                    font = "Nerd Hack Font:style=solid:pixelsize=14";
                                                                };
                                                            }

                                                            {
                                                                string = {
                                                                    text = " ";
                                                                    foreground = "00ff00ff";
                                                                    font = "Nerd Hack Font:style=solid:pixelsize=14";
                                                                };
                                                            }

                                                            {
                                                                string = {
                                                                    text = " ";
                                                                    foreground = "00ff00ff";
                                                                    font = "Nerd Hack Font:style=solid:pixelsize=14";
                                                                };
                                                            }

                                                            {
                                                                string = {
                                                                    text = " ";
                                                                    foreground = "00ff00ff";
                                                                    font = "Nerd Hack Font:style=solid:pixelsize=14";
                                                                };
                                                            }

                                                            {
                                                                string = {
                                                                    text = " ";
                                                                    foreground = "00ff00ff";
                                                                    font = "Nerd Hack Font:style=solid:pixelsize=14";
                                                                };
                                                            }

                                                            {
                                                                string = {
                                                                    text = " ";
                                                                    foreground = "00ff00ff";
                                                                    font = "Nerd Hack Font:style=solid:pixelsize=14";
                                                                };
                                                            }

                                                            {
                                                                string = {
                                                                    text = " ";
                                                                    foreground = "00ff00ff";
                                                                    font = "Nerd Hack Font:style=solid:pixelsize=14";
                                                                };
                                                            }

                                                            {
                                                                string = {
                                                                    text = " ";
                                                                    foreground = "00ff00ff";
                                                                    font = "Nerd Hack Font:style=solid:pixelsize=14";
                                                                };
                                                            }

                                                            {
                                                                string = {
                                                                    text = " ";
                                                                    foreground = "00ff00ff";
                                                                    font = "Nerd Hack Font:style=solid:pixelsize=14";
                                                                };
                                                            }
                                                        ];
                                                    };
                                                }

                                                {
                                                    string = {
                                                        text = "{capacity}%";
                                                    };
                                                }
                                            ];
                                        };
                                    };
                                };
                            };
                        }

                        {
                            clock = {
                                time-format = "%H:%M %Z";
                                content = [
                                    {
                                        string = {
                                            text = "";
                                            font = "Nerd Hack Font:style=solid:pixelsize=14";
                                        };
                                    }

                                    {
                                        string = {
                                            text = "{date}";
                                            right-margin = 5;
                                        };
                                    }

                                    {
                                        string = {
                                            text = "";
                                            font = "Nerd Hack Font:style=solid:pixelsize=14";
                                        };
                                    }

                                    {
                                        string = {
                                            text = "{time}";
                                        };
                                    }
                                ];
                            };
                        }

                        {
                            label = {
                                content = {
                                    string = {
                                        on-click = "systemctl poweroff";
                                        text = "";
                                        font = "Nerd Hack Font:style=solid:pixelsize=14";
                                    };
                                };
                            };
                        }
                    ];
                };
            };
        };
    };
}
