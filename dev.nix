{ config, pkgs, ... }:

{

    environment.systemPackages = with pkgs;[
     jetbrains.idea-ultimate
     vscode
     postgresql
     docker
     git
     jdk17
     python3
    ];
    
}