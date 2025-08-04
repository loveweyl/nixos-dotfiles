{ config, pkgs, ... }:

{
  services.dunst = {
    enable = true;
    settings = {
      global = {
        fullscreen = "show";
        transparency = 10;
        frame_color = "#1D2021";
        font = "JetBrains Mono 10";
      };
      urgency_normal = {
        background = "#32302F";
        foreground = "#98971A";        
        timeout = 10;
      };
    };
  };
}
