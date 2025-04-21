{
	pkgs,
	...
}: {
	systemd = {
		user = {
			services = {
				hyprpolkitagent = {
					Unit = {
						Description = "Hyprpolkitagent service.";
						WantedBy = "graphical-session.target";
					};
										
					Service = {
						ExecStart = "${pkgs.hyprpolkitagent}/libexec/hyprpolkitagent";
						Restart = "always";
						RestartSec = 10;
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
