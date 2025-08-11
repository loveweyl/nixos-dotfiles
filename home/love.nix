{ config, pkgs, ... }:

{
  home.username = "love";
  home.homeDirectory = "/home/love";
  home.stateVersion = "25.05";

  imports = [
    ./helix.nix
    ./fastfetch.nix
    ./alacritty.nix
    ./dunst.nix
  ];
  
  programs.bash = {
    enable = true;
    shellAliases = {
      nrs = "sudo nixos-rebuild switch --flake .;sudo nix flake update";
      edit = "cd /etc/nixos;sudo hx";
      server = "ssh lovew@100.88.187.13";
    };
    initExtra = ''
      export PS1='\[\e[38;5;167m\]\u\[\e[0m\] in \[\e[38;5;103m\]\w\[\e[0m\] \\$ '
      fastfetch
    '';
  };

          
  home.packages = with pkgs; [
    bat
    helix
    librewolf
    fastfetch
    discord-canary
    spotify
    blueman
    stremio
    flameshot
    picom
    steam
    clang
    # lsp servers
    pyright
    ruff
    clang-tools
  ];
}
