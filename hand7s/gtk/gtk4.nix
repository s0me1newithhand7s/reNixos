_: {
  gtk = {
    gtk4 = {
      extraCss = ''
        headerbar {
          background-color: mix(@base0D, @base02, 0.08);
        }

        headerbar title {
          font-size: 14px;
          font-weight: 500;
        }

        popover contents {
          background-color: mix(@base0D, @base02, 0.11);
        }

        button label {
          font-size: 12px;
          font-weight: 500;
        }

        button:hover  {
          background-color: alpha(@base0D, 0.08);
        }

        button:focus  {
          background-color: alpha(@base0D, 0.12);
        }

        button:active {
          background-color: alpha(@base0D, 0.16);
        }
      '';
    };
  };
}
