_: {
  services = {
    fail2ban = {
      enable = true;
      bantime-increment = {
        enable = true;
        factor = "10";
        formula = "ban.Time * math.exp(float(ban.Count+1)*banFactor)/math.exp(1*banFactor)";
        overalljails = true;
        maxtime = "500h";
      };
    };
  };
}
