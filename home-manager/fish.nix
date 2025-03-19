{ pkgs, ... }:

{
  programs.fish = {
    enable = true;
    generateCompletions = true;
    shellAliases = {
      shx = "sudo helix";
      cat = "bat";
      grep = "batgrep";
      ls = "eza -a --group-directories-first --icons='auto'";
      ll = "eza -a --group-directories-first --icons='auto'";
      lt = "eza -a --tree -L=3 --icons='auto'";
      mkdir = "mkdir -pv";
      cp = "rsync -ah --info=progress2";
    };
    plugins = with pkgs.fishPlugins; [
      { name = "sponge"; src = sponge.src; }
      { name = "puffer"; src = puffer.src; }
      { name = "colored-man-pages"; src = colored-man-pages.src; }
      { name = "autopair"; src = autopair.src; }
    ];
  };
}
