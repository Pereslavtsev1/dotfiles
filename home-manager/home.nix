{ config, pkgs, dotfiles-nvim, ... }:
{
    home.username = "pereslavtsev";
    home.homeDirectory = "/home/pereslavtsev";
    home.stateVersion = "24.11";
    home.packages = [
    ];
    home.file = {
        ".config/nvim".source = ../nvim;
        ".config/nvim".recursive = true;
    };

    home.file = {
        ".config/starship".source = ../starship/starship.toml;
    };
    home.sessionVariables = {
        NEOVIM_BIN = "/home/pereslavtsev/.nix-profile/bin/nvim";
    };
    programs.home-manager.enable = true;
    programs.starship.enable = true;
    programs.bash.enable = true;
}
