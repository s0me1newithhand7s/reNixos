{
    config,
    lib,
    ...
}: {
    programs = {
        hyprlock = {
            enable = lib.mkIf (
                config.home.gui.sessionType == "Hyprland"
            )
            true;

            settings = {
                general = {
                    hide_cursor = true;
                    ignore_empty_input = true;
                };

                label = [
                    {
                        monitor = "";
                        text = "$TIME";
                        text_align = "center";
                        color = config.lib.stylix.colors.base01;
                        font_size = 48;
                        font_family = config.stylix.fonts.emoji.name;
                        rotate = 0;

                        position = "0, 50";
                        halign = "center";
                        valign = "center";

                        shadow_passes = 1;
                        shadow_size = 2;
                        shadow_color = "rgba(38, 3, 4, 1)";
                        shadow_boost = 2;
                    }

                    {
                        monitor = "";
                        text = "> $LAYOUT[en,ru]";
                        text_align = "center";
                        color = config.lib.stylix.colors.base06;
                        font_size = 26;
                        font_family = config.stylix.fonts.emoji.name;
                        rotate = 0;

                        position = "200, -50";
                        halign = "center";
                        valign = "center";

                        shadow_passes = 1;
                        shadow_size = 2;
                        shadow_color = "rgba(38, 3, 4, 1)";
                        shadow_boost = 2;
                    }
                ];

                input-field = lib.mkForce [
                    {
                        monitor = "";
                        size = "250, 50";
                        outline_thickness = 2;
                        dots_size = 0.35;
                        dots_spacing = 0.5;
                        dots_center = true;
                        dots_rounding = -2;

                        fade_on_empty = false;
                        fade_timeout = 0;
                        placeholder_text = " ";
                        hide_input = false;
                        rounding = -0.3;

                        fail_text = "<i>$FAIL <b>($ATTEMPTS)</b></i>";
                        fail_transition = 1000;
                        capslock_color = -1;
                        numlock_color = -1;
                        bothlock_color = -1;
                        invert_numlock = false;
                        swap_font_color = false;

                        position = "0, -50";
                        halign = "center";
                        valign = "center";

                        shadow_passes = 1;
                        shadow_size = 5;
                        shadow_boost = 1;
                    }
                ];
            };
        };
    };
}
