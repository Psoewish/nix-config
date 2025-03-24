{ inputs, ... }:

{
  programs.nixcord = {
    enable = true;
    config = {
      themeLinks = [
        "https://raw.githubusercontent.com/toonoeichi/rosepine-discord-newthemes/refs/heads/main/Rose%20Pine/rose-pine.default.css"
      ];
      plugins = {
        betterFolders.enable = true;
        biggerStreamPreview.enable = true;
        clearURLs.enable = true;
        fixYoutubeEmbeds = {
          enable = true;
          volume = 10.0;
        };
        messageLinkEmbeds.enable = true;
        noOnboardingDelay.enable = true;
        openInApp.enable = true;
        shikiCodeblocks = {
          enable = true;
          theme = "Rose Pine";
        };
        webScreenShareFixes.enable = true;
      };
    };
  };
}
