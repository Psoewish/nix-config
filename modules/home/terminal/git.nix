{ ... }:

{
  programs = {
    git = {
      enable = true;
      userName = "psoewish";
      userEmail = "psoewish@proton.me";
      extraConfig.credential = {
        "https://github.com" = {
          helper = "!gh auth git-credential";
        };
        "https://git.github.com" = {
          helper = "!gh auth git-credential";
      };
      };
    };
    
    gh = {
      enable = true;
      settings.editor = "hx";
      gitCredentialHelper.enable = false;
    };
    
    lazygit = {
      enable = true;
    };
  };
}
