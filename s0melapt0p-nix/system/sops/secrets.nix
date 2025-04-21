{
    ...
}: {
    sops = {
        secrets = {
            sshKey = {
                format = "yaml";
                sopsFile = ./secrets/sshKey.yaml;
            };
            sshKey_pub = {
                format = "yaml";
                sopsFile = ./secrets/sshKey_pub.yaml;
            };
            passwd = {
                neededForUsers = true;
                format = "yaml";
                sopsFile = ./secrets/passwd.yaml;
            };
            
        };
    };
}