{
    lib,
    pkgs,
    ...
}: {
    programs = {
        fish = {
            enable = true;
            generateCompletions = true;
            functions = {
                fish_greeting = {
                    body = "${lib.getExe' pkgs.uutils-coreutils-noprefix "echo"} ' ~ 𝑠𝑛𝑜𝑤𝑦 𝑝𝑙𝑎𝑐𝑒, 𝑓𝑢𝑙𝑙 𝑜𝑓 𝑓𝑙𝑎𝑘𝑒𝑠! '";
                };
            };
        };
    };
}
