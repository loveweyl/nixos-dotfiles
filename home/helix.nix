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
    languages = {
      language-server.pyright = {
        command = "${pkgs.pyright}/bin/pyright-langserver";
        args = [ "--stdio" ];
      };
      language-server.ruff = {
        command = "${pkgs.ruff}/bin/ruff-lsp";
      };
      language-server.clangd = {
        command = "${pkgs.clang-tools}/bin/clangd";
      };
      language = [
        {
          name = "python";
          language-servers = [ "pyright" "ruff" ];
          formatter = { command = "${pkgs.ruff}/bin/ruff"; args = [ "format" "-" ]; };
        }
        {
          name = "c";
          language-servers = [ "clangd" ];
          formatter = { command = "${pkgs.clang-tools}/bin/clang-format"; };
        }
      ];
    };
  };
}
