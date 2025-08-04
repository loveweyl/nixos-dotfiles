{ config, pkgs, ... }:

{
  programs.alacritty = {
    enable = true;
    settings = {
      window = {
        opacity = 0.9;
      };
      font.normal = {
        family = "JetBrains mono";
        style = "Regular";
      };
    };
  };
}
