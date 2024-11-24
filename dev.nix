{ config, pkgs, ... }:

{

    environment.systemPackages = with pkgs;[
     jetbrains.idea-ultimate
     vscode

     gcc
     clang
     cmake
     gnumake

     
     postgresql
     docker
     git
     jdk17
     jdk22
     python3
    ];
    
}