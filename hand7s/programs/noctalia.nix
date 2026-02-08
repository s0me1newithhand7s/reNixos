{
  lib,
  config,
  ...
}: {
  programs =
    if
      (
        config.home.gui.sessionType == "Hyprland"
      )
    then {
      noctalia-shell = {
        enable = true;
        settings = {
          general = {
            avatarImage = "/home/hand7s/Pictures/pfp4_mini.jpg";
            animationDisabled = false;
            dimDesktop = false;
            forceBlackScreenCorners = true;
            showScreenCorners = true;
            screenRadiusRatio = 1;
            radiusRatio = 0.7;
            enableShadows = true;
            shadowDirection = "center";
          };

          appLauncher = {
            position = "bottom_center";
            useApp2Unit = false;
            sortByMostUsed = true;
            enableClipboardHistory = false;
            terminalCommand = "ghostty -e";
          };

          audio = {
            visualizerType = "mirrored";
            volumeOverdrive = true;
            cavaFrameRate = 165;
            volumeStep = 5;
          };

          bar = {
            floating = false;
            density = "default";
            position = "right";
            showCapsule = false;
            marginVertical = 1;
            marginHorizontal = 0.6;
            monitors = [
              "DP-3"
            ];

            widgets = {
              left = [
                {
                  id = "ControlCenter";
                  useDistroLogo = true;
                }

                {
                  id = "Workspace";
                  hideUnoccupied = true;
                  labelMode = "index";
                }

                {
                  id = "MediaMini";
                  autoHide = true;
                  scrollingMode = "hover";
                  showAlbumArt = true;
                  showVisualizer = true;
                  visualizerType = "mirrored";
                }
              ];

              center = [
                {
                  id = "Clock";
                  formatHorizontal = "⏱HH:mm:ss";
                  formatVertical = "⏱ HH mm ss";
                  useMonospacedFont = true;
                  usePrimaryColor = true;
                }
              ];

              right = [
                {
                  id = "KeyboardLayout";
                  displayMode = "onhover";
                }

                {
                  id = "Microphone";
                  displayMode = "onhover";
                }

                {
                  id = "Volume";
                  displayMode = "onhover";
                }

                {
                  id = "Spacer";
                }

                {
                  id = "Tray";
                  blacklist = [];
                  colorizeIcons = true;
                }

                {
                  id = "NotificationHistory";
                  hideWhenZero = false;
                  showUnreadBadge = true;
                }
              ];
            };
          };

          notifications = {
            location = "top_center";
          };

          controlCenter = {
            position = "close_to_bar_button";
            quickSettingsStyle = "compact";
            widgets = {
              quickSettings = [
                {
                  id = "Notifications";
                }

                {
                  id = "ScreenRecorder";
                }

                {
                  id = "KeepAwake";
                }

                {
                  id = "NightLight";
                }
              ];
            };
          };

          dock = {
            displayMode = "auto_hide";
            floatingRatio = 1;
            onlySameOutput = true;
            colorizeIcons = true;
            monitors = [
              "DP-3"
            ];
          };

          colors = with config.lib.stylix.colors; {
            mBackground = base00;
            mSurface = base01;
            mOverlay = base02;
            mMuted = base03;
            mBorder = base04;
            mText = base05;
            mTextAlt = base06;
            mTextDim = base07;
            mError = base08;
            mWarning = base09;
            mAccent = base0A;
            mSuccess = base0B;
            mCyan = base0C;
            mPrimary = base0D;
            mMagenta = base0E;
            mOrange = base0F;
            mOnBackground = base05;
            mOnSurface = base05;
            mOnPrimary = base00;
            mOnError = base00;
          };

          colorSchemes = {
            darkMode = true;
            useWallpaperColors = false;
            generateTemplatesForPredefined = false;
            predefinedScheme = "Tokyo Night";
            matugenSchemeType = "scheme-fruit-salad";
          };

          osd = {
            enabled = true;
            alwaysOnTop = true;
            autoHideMs = 2500;
            location = "bottom_center";
            monitors = [
              "DP-3"
            ];
          };

          ui = {
            fontDefault = lib.mkForce "Nerd Fonts Hack";
            fontDefaultScale = 1;
            fontFixed = lib.mkForce "Nerd Fonts Hack";
            fontFixedScale = 1;
            idleInhibitorEnabled = false;
            tooltipsEnabled = true;
          };

          wallpaper = {
            enabled = false;
          };

          location = {
            name = "Tatarstan, Yelaguba";
            showWeekNumberInCalendar = true;
            use12hourFormat = false;
            useFahrenheit = false;
          };

          network = {
            wifiEnabled = false;
          };
        };
      };
    }
    else {};
}
