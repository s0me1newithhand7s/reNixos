{
    pkgs,
    ...
}: {
    programs = { 
        fuzzel = {
            settings = {
                main = {
                    terminal = "${pkgs.ghostty}/bin/ghostty";
                    layer = "overlay";
                    prompt = "  > ";
                };
                
                border = {
                    width = "2";
                    radius = "10";
                };
            };
        };
    };
}
