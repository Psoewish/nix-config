{...}: {
  programs.nixcord = {
    enable = true;
    config = {
      plugins = {
        betterFolders.enable = true;
        biggerStreamPreview.enable = true;
        clearURLs.enable = true;
        fixYoutubeEmbeds.enable = true;
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
