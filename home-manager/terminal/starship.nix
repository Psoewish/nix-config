{ lib, ... }:

{
  programs.starship = {
    enable = true;
    enableTransience = true;
    settings = {
      format = lib.concatStrings [
        "$directory\\"
        "$git_branch\\"
        "$git_status\\"
        "$line_break\\"
        "$username\\"
        "hostname\\"
        "$nix_shell\\"
        "$character"
      ];
      git_branch.format = "[$branch]($style) ";
      git_status.format = "[$all_status]($style) ";
      username.format = "[$user]($style) ";
      hostname.format = "[$hostname]($style) ";
      nix_shell.format = "[$name]($style) ";
    };
  };
}
  
