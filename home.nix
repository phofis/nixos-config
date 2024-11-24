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
        };
    };

    programs.ssh = {
        enable = true;
        extraConfig = ''
            Host student
                HostName student.tcs.uj.edu.pl
                User z1201771
            Host miracle
                HostName miracle.tcs.uj.edu.pl
                User z1201771
            Host rj45
                HostName 20.19.36.189
                User piotr
            Host minix
                HostName 192.168.56.101
                User piotr
        '';
    };

    programs.zsh = {
        enable = true;
        enableCompletion = true;
        autosuggestion.enable = true;
        syntaxHighlighting.enable = true;

        shellAliases = {
            rebuild = "sudo nixos-rebuild switch --flake /home/piotr/nix --upgrade && home-manager switch --flake /home/piotr/nix";
            shut = "shutdown now";
        };
        history = {
            size = 10000;
            path = "${config.xdg.dataHome}/zsh/history";
        };
        oh-my-zsh = {
            enable = true;
            plugins = [ "git" ];
            theme = "gnzh";
        };

};
}