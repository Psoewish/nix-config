{ ... }:

{
  programs.helix = {
    enable = true;
    defaultEditor = true;

    settings = {
      editor = {
        line-number = "relative";
        continue-comments = false;
        preview-completion-insert = false;
        bufferline = "multiple";
        color-modes = true;
        popup-border = "all";
        indent-heuristic = "tree-sitter";
        end-of-line-diagnostics = "hint";
        statusline = {
          left = [ "mode" "read-only-indicator" "diagnostics" ];
          center = [ "spinner" "file-name" "file-modification-indicator" ];
          right = [ "file-type" "position" ];
        };
        cursor-shape = {
          normal = "block";
          insert = "bar";
          select = "block";
        };
        file-picker = {
          hidden = false;
        };
        whitespace.render = {
          space = "none";
          tab = "all";
          nbsp = "none";
          nnbsp = "none";
          newline = "none";
        };
        indent-guides = {
          render = true;
          character = "▏";
        };
        soft-wrap = {
          enable = true;
        };
        inline-diagnostics = {
          cursor-line = "warning";
        };
      };
      keys = {
        normal = {
          esc = [ "collapse_selection" "keep_primary_selection" ];
          C-g = [ ":new" ":insert-output lazygit" ":buffer-close!" ":redraw" ];
          C-s = [ ":w" ];
        };
      };
    };
  };
}
