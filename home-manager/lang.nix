{ config, pkgs, ... }:

{
	programs.java.enable = true;
	programs.go.enable = true;

	home.packages = [
		pkgs.gcc 
		pkgs.nodejs_23
        pkgs.pnpm
		pkgs.python313
	];
}

