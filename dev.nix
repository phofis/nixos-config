{ config, pkgs, ... }:

{

    environment.systemPackages = with pkgs;[
     jetbrains.idea-ultimate
     vscode

     gcc
     clang
     cmake

     postgresql
     docker
     git
     jdk17
     jdk21
     python3
    ];
    
}