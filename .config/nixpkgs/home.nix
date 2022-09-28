{ config, pkgs, ... }:

{
  home.username = "joao";
  home.homeDirectory = "/home/joao";

  home.stateVersion = "22.05";

  nix.extraOptions = ''
    experimental-features = nix-command
  '';

  programs.home-manager.enable = true;

  programs.neovim.enable = true;
  programs.neovim.viAlias = true;

  home.packages = with pkgs; [
    cowsay nodejs
  ];

  programs.zsh = {
    enable = true;
    initExtra = ''
      function mkcd () mkdir -p "$@" && eval cd "\"\$$#\""
    '';
    oh-my-zsh = {
      enable = true;
      plugins = [ "git" ];
      theme = "robbyrussell";
    };
  };

  programs.vim = {
    enable = true;
    plugins = with pkgs.vimPlugins; [ vim-airline ];
    settings = { ignorecase = true; };
  };
}
