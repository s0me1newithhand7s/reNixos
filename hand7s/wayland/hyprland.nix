{
  self,
  config,
  pkgs,
  lib,
  ...
}: {
  wayland = {
    windowManager = {
      hyprland = {
        enable =
          lib.mkIf (
            config.home.gui.sessionType == "Hyprland"
          )
          true;

        package = self.inputs.hyprland.packages.${pkgs.system}.hyprland;
        portalPackage = self.inputs.hyprland.packages.${pkgs.system}.xdg-desktop-portal-hyprland;

        settings = {
          monitor = ", 2560x1440@165.00Hz, 0x0, 1";

          general = {
            gaps_in = "5";
            gaps_out = "20";
            border_size = "2";
            layout = "dwindle";

            snap = {
              enabled = false;
              window_gap = "5";
              monitor_gap = "5";
              border_overlap = false;
            };
          };

          input = {
            kb_layout = "us, ru";
            kb_options = "grp:caps_toggle";

            numlock_by_default = true;
            follow_mouse = "1";
            left_handed = false;
            sensitivity = "0";

            special_fallthrough = true;
            focus_on_close = 1;

            touchpad = {
              disable_while_typing = true;
              tap-to-click = true;
            };

            tablet = {
              output = "current";
              left_handed = true;
            };
          };

          gestures = {
            workspace_swipe = true;
            workspace_swipe_fingers = true;
            workspace_swipe_distance = 400;
          };

          decoration = {
            active_opacity = "0.85";
            inactive_opacity = "0.65";
            fullscreen_opacity = "1.0";
            rounding = "10";

            dim_inactive = true;
            dim_strength = "0.15";
            dim_special = "0.0";
            dim_around = "0.05";

            shadow = {
              enabled = true;
              render_power = "4";
              range = "4";
              ignore_window = false;
            };

            blur = {
              enabled = true;
              size = "10";
              passes = "5";
            };
          };

          execr-once = [
            "${lib.getExe' pkgs.systemd "systemctl"} --user start hyprpaper.service"
            "${lib.getExe' pkgs.systemd "systemctl"} --user start hypridle.service"
            "${lib.getExe' pkgs.systemd "systemctl"} --user start hyprpolkitagent.service"
            "${lib.getExe self.inputs.noctalia.packages.${pkgs.system}.default}"

            "${lib.getExe' pkgs.hyprland "hyprctl"} setcursor material_light_cursors 20"
          ];

          bind = [
            "ALT, return, exec, ${lib.getExe pkgs.ghostty}"
            "ALT, Q, killactive,"
            "ALT, S, exec, ${lib.getExe self.inputs.noctalia.packages.${pkgs.system}.default} ipc call launcher toggle"
            "ALT, F, fullscreen, 0"
            "ALT, L, exec, ${lib.getExe pkgs.hyprlock}"

            "ALT SHIFT, space, togglefloating, active"
            "ALT SHIFT, S, exec, ${lib.getExe pkgs.grimblast} --notify --freeze copysave area /home/hand7s/Pictures/Screenshots/$(date '+%y%m%d_%H-%M-%s').png | , killall -9 hyprpicker"

            "ALT, left, movefocus, l"
            "ALT, right, movefocus, r"
            "ALT, up, movefocus, u"
            "ALT, down, movefocus, d"

            "ALT, 1,  workspace, 1"
            "ALT, 2,  workspace, 2"
            "ALT, 3,  workspace, 3"
            "ALT, 4,  workspace, 4"
            "ALT, 5,  workspace, 5"
            "ALT, 6,  workspace, 6"
            "ALT, 7,  workspace, 7"
            "ALT, 8,  workspace, 8"
            "ALT, 9,  workspace, 9"
            "ALT, 0,  workspace, 10"
            "ALT, H, togglespecialworkspace, special"

            "ALT SHIFT, 1, movetoworkspacesilent, 1"
            "ALT SHIFT, 2, movetoworkspacesilent, 2"
            "ALT SHIFT, 3, movetoworkspacesilent, 3"
            "ALT SHIFT, 4, movetoworkspacesilent, 4"
            "ALT SHIFT, 5, movetoworkspacesilent, 5"
            "ALT SHIFT, 6, movetoworkspacesilent, 6"
            "ALT SHIFT, 7, movetoworkspacesilent, 7"
            "ALT SHIFT, 8, movetoworkspacesilent, 8"
            "ALT SHIFT, 9, movetoworkspacesilent, 9"
            "ALT SHIFT, 0, movetoworkspacesilent, 10"
            "ALT SHIFT, H, movetoworkspacesilent, special"

            "ALT, Tab, hyprexpo:expo, toggle"

            "ALT, mouse_down, workspace, e+1"
            "ALT, mouse_up, workspace, e-1"
          ];

          bindel = [
            ", XF86AudioRaiseVolume, exec, ${lib.getExe' pkgs.wireplumber "wpctl"} set-volume @DEFAULT_AUDIO_SINK@ 5%+"
            ", XF86AudioLowerVolume, exec, ${lib.getExe' pkgs.wireplumber "wpctl"} set-volume @DEFAULT_AUDIO_SINK@ 5%-"

            ", XF86MonBrightnessDown, exec, ${lib.getExe pkgs.brightnessctl} set 5%-"
            ", XF86MonBrightnessUp, exec, ${lib.getExe pkgs.brightnessctl} set +5%"
          ];

          bindl = [
            ", XF86AudioPlay, exec, ${lib.getExe pkgs.playerctl} play-pause"
            ", XF86AudioPrev, exec, ${lib.getExe pkgs.playerctl} previous"
            ", XF86AudioNext, exec, ${lib.getExe pkgs.playerctl} next"
            ", XF86AudioMute, exec, ${lib.getExe' pkgs.wireplumber "wpctl"} set-mute @DEFAULT_AUDIO_SINK@ toggle"
          ];

          bindm = [
            "ALT, mouse:272, movewindow"
            "ALT, mouse:273, resizewindow"
          ];

          animation = [
            "enabled = true"

            "animation = windows, 1, 7, popin"
            "animation = windowsOut, 1, 7, popin"

            "animation = layers, 1, 7, fade"

            "animation = border, 1, 10"
            "animation = borderangle, 1, 10"

            "animation = workspaces, 1, 7, slidevert"
            "animation = specialWorkspace, 1, 7, slidevert"
          ];

          misc = {
            disable_hyprland_logo = true;
            disable_splash_rendering = true;
            middle_click_paste = false;
            animate_manual_resizes = true;
            animate_mouse_windowdragging = true;
            focus_on_activate = true;
            close_special_on_empty = true;
            initial_workspace_tracking = "2";
          };

          render = {
            cm_auto_hdr = 0;
          };

          binds = {
            workspace_back_and_forth = true;
            allow_workspace_cycles = true;
            workspace_center_on = true;
          };

          xwayland = {
            enabled = true;
            use_nearest_neighbor = true;
            force_zero_scaling = false;
          };

          ecosystem = {
            no_update_news = true;
            no_donation_nag = true;
          };

          debug = {
            suppress_errors = true;
          };

          plugin = {
            hyprscrolling = {
              fullscreen_on_one_column = true;
              follow_focus = true;
              column_width = 0.7;
              focus_fit_method = "center";
            };

            hyprexpo = {
              columns = 2;
              gap_size = 10;
              skip_empty = true;
              workspace_method = "workspace";
            };

            dynamic-cursors = {
              enabled = true;
              mode = "strech";
              threshold = 2;
              stretch = {
                limit = 4000;
                function = "linear";
              };

              shake = {
                enabled = true;
                nearest = true;
                threshold = 10.0;
                effects = true;
              };

              hyprcursor = {
                enabled = true;
                nearest = true;
                fallback = "clientside";
              };
            };

            touch_gestures = {
              sensitivity = 0.0;
              workspace_swipe_fingers = 4;
              long_press_delay = 400;
              resize_on_border_long_press = true;
              edge_margin = 10;
              emulate_touchpad_swipe = false;
            };
          };
        };

        plugins = with pkgs.hyprlandPlugins; [
          hypr-dynamic-cursors
          hyprscrolling
          hyprexpo
        ];
      };
    };
  };
}
