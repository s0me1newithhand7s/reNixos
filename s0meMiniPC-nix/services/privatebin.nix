{...}: {
    services = {
        privatebin = {
            enable = true;
            enableNginx = true;
            virtualHost = "bin.hand7s.org";
            settings = {
                main = {
                    name = "hand7s bin";
                    discussion = false;
                    qrcode = false;
                    compression = "none";
                    defaultformatter = "plaintext";
                    fileupload = false;
                    languageselection = false;
                    password = true;
                    sizelimit = 10 * 1000 * 1000;
                    template = "bootstrap5";
                };

                expire = {
                    default = "1week";
                    clone = false;
                };

                formatter_options = {
                    markdown = "Markdown";
                    plaintext = "Plain Text";
                    syntaxhighlighting = "Source Code";
                };

                traffic = {
                    limit = 5;
                };

                purge = {
                    limit = 0;
                    batchsize = 10;
                };
            };
        };
    };
}
