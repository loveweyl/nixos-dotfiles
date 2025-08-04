{ config, pkgs, ... }:

{
  programs.helix = {
    enable = true;
    settings = {
    theme = "ayu_dark";
      editor = {
        line-number = "relative";
        mouse = false;
      };
      editor.cursor-shape = {
        insert = "bar";
        normal = "block";
        select = "underline";
      };
    };
  };
}
