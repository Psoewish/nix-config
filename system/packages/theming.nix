{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    bibata-cursors
    rose-pine-gtk-theme
    rose-pine-icon-theme
    
    nwg-look
  ];
}
