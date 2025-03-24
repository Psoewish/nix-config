{ ... }:

{
  programs.yazi = {
    enable = true;
    manager = {
      show_hidden = true;
    };
    opener = {
      edit = [
        { run = "hx \"$@\""; block = true; }
      ];
    };
  };
}
