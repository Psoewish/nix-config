{...}: {
  programs.yazi = {
    enable = true;
    settings = {
      manager = {
        show_hidden = true;
      };
      opener = {
        edit = [
          {
            run = "hx \"$@\"";
            block = true;
          }
        ];
      };
    };
  };
}
