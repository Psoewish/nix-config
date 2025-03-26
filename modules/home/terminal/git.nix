{ ... }:

{
  programs = {
    git = {
      enable = true;
      userName = "psoewish";
      userEmail = "psoewish@proton.me";
    };
    
    gh = {
      enable = true;
      settings.editor = "hx";
    };
    
    lazygit = {
      enable = true;
    };
  };
}
