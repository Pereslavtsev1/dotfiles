{ config,pkgs,... }:
{
    programs.zoxide.enable = true;
    programs.zoxide.enableBashIntegration = true;
    programs.eza.enable = true;
    programs.gh = {
        enable = true;
        settings = {
            version = "1";
            aliases = {
                "as" = "auth status";
            };
        };
    };
	programs.fzf.enable = true;
    programs.neovim.enable = true;
    programs.neovim.viAlias = true;
    programs.neovim.vimAlias = true;
    programs.fd.enable = true;
    programs.lazygit.enable = true;
    programs.ripgrep.enable = true;
    home.packages = [
        pkgs.xh
        pkgs.unzip
        pkgs.btop
        pkgs.bat
        pkgs.glow
        pkgs.git-credential-manager
        pkgs.posting
        pkgs.jq
    ];
    home.shellAliases = {
        ls="eza --icons --group-directories-first";
        cls="clear";
        ll="eza --icons --group-directories-first -l";
        update-home = "home-manager switch --flake .#pereslavtsev"; 
    };
}
