{ config, pkgs, ...}:
{
    programs.neovim.enable = true;
    programs.neovim.viAlias = true;
    programs.neovim.vimAlias = true;
    programs.fd.enable = true;
    programs.lazygit.enable = true;
    programs.ripgrep.enable = true;

}
