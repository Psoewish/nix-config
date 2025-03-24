{ pkgs, ... }:

{
  home.packages = with pkgs; [ fish ];
  programs.fish = {
    enable = true;
    shellAliases = {
      shx = "sudo hx";
      cat = "bat";
      man = "batman";
      copycat = "wl-copy < cat";
      mkdir = "mkdir -pv";
      cp = "rsync -ah --info=progress2";
      ls = "eza";
      ll = "eza -l";
      lt = "eza -T -L=3 --git-ignore";
    };
    interactiveShellInit = ''
      set -U fish_greeting
      set -gx EDITOR hx
      set sponge_purge_only_on_exit true
    '';
    plugins = with pkgs.fishPlugins; [
      { name = "autopair"; src = autopair.src; }
      { name = "puffer"; src = puffer.src; }
      { name = "sponge"; src = sponge.src; }
      { name = "grc"; src = grc.src; }
      { name = "bang-bang"; src = bang-bang.src; }
      { name = "git-abbr"; src = git-abbr.src; }
      { name = "pure"; src = pure.src; }
      # { name = "transient-fish"; src = transient-fish.src; }
    ];
  };
}
