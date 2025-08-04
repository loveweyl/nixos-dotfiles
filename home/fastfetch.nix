{ config, pkgs, ... }:

{
   
  programs.fastfetch = {
    enable = true;
    settings = {
      logo = {
        source = "vanilla";
        padding = {
          right = 1;
        };
      };
      display = {
      };
      modules = [
        {
          type = "title";
          format = "{#1}╭───────────── {#}{user-name-colored}";
        }
        {
          type = "custom";
          format = "{#1}│ {#}System Information";
        }
        {
          type = "os";
          key = "{#separator}│ {#keys} OS";
        }
        {
          type = "kernel";
          key = "{#separator}│ {#keys} Kernel";
        }
        {
          type = "uptime";
          key = "{#separator}│ Uptime";
        }
        {
          type = "custom";
          format = "{#1}│";
        }
        {
          type = "custom";
          format = "{#1}│ {#}Desktop Environment";
        }
        {
          type = "wm";
          key = "{#separator}│ {#keys} WM";
        }
        {
          type = "display";
          key = "{#separator}│ {#keys} Resoltuion";
        }
        {
          type = "shell";
          key = "{#separator}│ {#keys} Font";
        }
        {
          type = "custom";
          format = "{#1}│";
        }
        # hardware
        {
          type = "custom";
          format = "{#1}│ {#}Hardware Information";
        }
        {
          type = "cpu";
          key = "{#separator}│ {#keys} CPU";
        }
        {
          type = "gpu";
          key = "{#separator}│ {#keys} GPU";
        }
        {
          type = "memory";
          key = "{#separator}│ {#keys} Memory";
        }
        {
          type = "battery";
          key = "{#separator}│ {#keys} Battery";
        }
        {
          type = "custom";
          format = "{#1}╰───────────────────────────────";
        }
      ];
    };
  };
}
