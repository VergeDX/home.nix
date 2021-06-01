{ config, pkgs, ... }:

{
  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home.username = "vanilla";
  home.homeDirectory = "/Users/vanilla";

  # This value determines the Home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new Home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "21.05";

  # https://github.com/nix-community/home-manager#usage
  home.packages = [
    pkgs.nixpkgs-fmt

    pkgs.act
    pkgs.scrcpy
    pkgs.translate-shell
    pkgs.gh
    pkgs.mr
    pkgs.p7zip
    pkgs.watch

    pkgs.screen
    pkgs.screenfetch
    pkgs.neofetch

    pkgs.gradle
    pkgs.maven

    pkgs.htop
    pkgs.jq
    pkgs.wget
    pkgs.lsd
    pkgs.tree

    pkgs.gitRepo
    pkgs.smartmontools
    pkgs.speedtest-cli
    pkgs.youtube-dl

    pkgs.mas

    pkgs.dive
    pkgs.dolt
    pkgs.fzf
    pkgs.gdbgui
    pkgs.git-lfs
    pkgs.gping

    pkgs.jadx
    pkgs.jmeter
    pkgs.kotlin

    pkgs.redis

    # https://github.com/nix-community/home-manager/issues/1994
    pkgs.jdk8

    pkgs.yarn
    pkgs.nodejs
    pkgs.nodePackages.typescript

    pkgs.lazydocker
    pkgs.rustc
    pkgs.nasm
    pkgs.wabt

    pkgs.neovim
    pkgs.nano
    pkgs.zsh-powerlevel10k

    pkgs.w3m
    pkgs.lynx

    pkgs.freetds

    # https://asciinema.org/
    pkgs.asciinema

    pkgs.binwalk
    pkgs.brotli
    pkgs.iperf
    pkgs.yara
    pkgs.mcrypt
    pkgs.ncrack
    pkgs.sqlmap

    # https://github.com/NixOS/nixpkgs/issues/125077
    # pkgs.ettercap

    # Flutter (via Homebrew) needs this.
    pkgs.cocoapods

    pkgs.gimp
    pkgs.pkgs.jd-gui
    pkgs.ngrok
    pkgs.powershell
    pkgs.stm32cubemx
    pkgs.remotebox
    pkgs.vscode
    pkgs.wireshark
  ];

  programs.gpg.enable = true;
  programs.git.enable = true;
  programs.git.userName = "Vanilla";
  programs.git.userEmail = "neko@hydev.org";
}
