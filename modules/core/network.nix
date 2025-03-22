{ ... }:

{
  networking = {
    networkmanager.enable = true;
    enableIPv6 = false;
    firewall.enable = false;
  };
  services.tailscale = {
    enable = true;
    useRoutingFeatures = "client";
  };
}
