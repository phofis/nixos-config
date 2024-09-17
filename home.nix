{config, pkgs, ...}:

{
    home = {
        username = "piotr";
        homeDirectory = "/home/piotr";
        stateVersion = "24.05";
    };

    programs.git = {
        enable = true;
        userName = "phofis";
        userEmail = "pasula.piotr@gmail.com";
        extraConfig = {
            init.defaultBranch = "main";
            safe.directory = "/etc/nixos";
        };
    };

    programs.bash = {
        enable = true;
        shellAliases = {
            rebuild = "sudo nixos-rebuild switch --flake /home/piotr/nix && home-manager switch --flake /home/piotr/nix";
        };
    };

    programs.ssh = {
        enable = true;
        extraConfig = ''
            Host student
                HostName student.tcs.uj.edu.pl
                User z1201771
            Host *
                AddKeysToAgent yes
                IdentityFile ~/.ssh/id_ed25519
        '';
    };
}