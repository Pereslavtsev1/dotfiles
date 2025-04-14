{ config, pkgs, ...}: 
{
	programs.gh = {
		enable = true;
		settings = {
			version = "1";
			aliases = {
				"as" = "auth status";
			};
		};
	};
}
