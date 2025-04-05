{...}: {
  networking = {
    networkmanager.enable = true;
    enableIPv6 = false;
    firewall.enable = false;
  };

  services.resolved = {
    enable = true;
    domains = ["~."];
    fallbackDns = ["9.9.9.9" "1.1.1.1"];
  };

  services.tailscale = {
    enable = true;
    useRoutingFeatures = "client";
  };
}
