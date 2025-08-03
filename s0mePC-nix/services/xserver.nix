{
    lib,
    pkgs,
    ...
}: {
    services = {
        xserver = {
            display = lib.mkForce 0;
            enable = true;

            excludePackages = with pkgs; [
                xterm
            ];

            videoDrivers = [
                "amdgpu"
            ];

            xkb = {
                layout = "us, ru";
                options = "grp:caps_toggle";
            };
        };
    };
}
