{
	pkgs,
	...
}: {
    systemd = {
	    user = {
    		services = {
				hyprpanel = {
					Unit = {
						Description = "Hyprpanel service.";
						WantedBy = "graphical-session.target";
					};
										
					Service = {
						ExecStart = "${pkgs.hyprpanel}/bin/hyprpanel";
						Restart = "always";
						RestartSec = 1;
					};

					Install = {
						After = "graphical-session.target";
						ConditionEnvironment = "WAYLAND_DISPLAY";
						PartOf = "graphical-session.target";
					};
				};
			};
		};
	};
}
