{ ... }:

{
  programs.foot = {
    enable = true;
    server.enable = true;
    settings = {
      main = {
        shell = "fish";
      };
      mouse = {
        hide-when-typing = "yes";
      };
    };
  };
}
