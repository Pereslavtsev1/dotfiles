{ config,pkgs,... }:
{
    programs.zoxide.enable = true;
    programs.zoxide.enableBashIntegration = true;
    programs.eza.enable = true;
    home.packages = [
        pkgs.xh
        pkgs.unzip
        pkgs.btop
        pkgs.bat
        pkgs.glow
        pkgs.git-credential-manager
    ];
    home.shellAliases = {
        ls="eza --icons --group-directories-first";
        cls="clear";
        ll="eza --icons --group-directories-first -l";
        update-home = "home-manager switch --flake .#pereslavtsev"; 
    };
}
