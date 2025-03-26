{ pkgs, ... }:

{
  programs.helix = {
    enable = true;
    defaultEditor = true;
    settings = {
      # theme = "rose_pine";
      editor = {
        line-number = "relative";
        continue-comments = false;
        bufferline = "multiple";
        color-modes = true;
        popup-border = "all";
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
        file-picker.hidden = false;
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
          skip-levels = 1;
        };
        inline-diagnostics.cursor-line = "warning";
      };
      keys = {
        normal = {
          esc = [ "collapse_selection" "keep_primary_selection" ];
          C-g = [":new" ":insert-output lazygit" ":buffer-close!" ":redraw" ];
          C-s = [ ":w" ];
        };
      };
    };
    extraPackages = with pkgs; [
      hyprls
      gopls
      zls
      nil
      marksman
      markdown-oxide
      vscode-langservers-extracted
      typescript-language-server
      yaml-language-server
      awk-language-server
      bash-language-server
      clang-tools
      omnisharp-roslyn
      jq-lsp
      lua-language-server
      ruff
      rust-analyzer
      lldb
    ];
  };
}
