{lib, ...}: {
  users = {
    users = {
      "root" = {
        initialHashedPassword = lib.hashString "sha512" "root";
      };
    };
  };
}
