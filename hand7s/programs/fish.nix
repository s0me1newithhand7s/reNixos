{
    ...
}: {
    programs = {
        fish = {
            enable = true;
            generateCompletions = true;
            functions = {
                fish_greeting = {
                    body = "echo ' ~ 𝑠𝑛𝑜𝑤𝑦 𝑝𝑙𝑎𝑐𝑒, 𝑓𝑢𝑙𝑙 𝑜𝑓 𝑓𝑙𝑎𝑘𝑒𝑠! '";
                };
            };
        };
    };
}