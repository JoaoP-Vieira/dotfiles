{ config, pkgs, ... }:

{
  home.username = "joao";
  home.homeDirectory = "/home/joao";

  home.stateVersion = "22.05";

  nix.extraOptions = ''
    experimental-features = nix-command
  '';

  programs.home-manager.enable = true;
  fonts.fontconfig.enable = true;

  programs.neovim.enable = true;
  programs.neovim.viAlias = true;

  home.packages = with pkgs; [
    nodejs
    (pkgs.nerdfonts.override { fonts = [ "FiraCode" "DroidSansMono" ]; })
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

  home.sessionVariables = {
    TERMINAL="kitty";
  };

  programs.kitty = {
    enable = true;
    settings = {
      confirm_os_window_close = "0";
      enable_audio_bell       = "no";

      font_family       = "FiraCode Nerd Font Mono";
      italic_font       = "auto";
      bold_font         = "auto";
      bold_italic_font  = "auto";

      font_size           = "12.0";
      force_ltr           = "yes";
      adjust_line_height  = "5";

			background	= "#131313";
			foreground  = "#d6dae4";
			cursor    	= "#b9b9b9";
			
			selection_background = "#d6dae4";
			selection_foreground = "#131313";

			color0    = "#1f1f1f";
      color1    = "#f71118";
      color2    = "#2cc55d";
      color3    = "#ecb90f";
      color4    = "#2a84d2";
      color5    = "#4e59b7";
      color6    = "#0f80d5";
      color7    = "#d6dae4";
      color8    = "#d6dae4";
      color9    = "#de342e";
      color10   = "#1dd260";
      color11   = "#f2bd09";
      color12   = "#0f80d5";
      color13   = "#524fb9";
      color14   = "#0f7cda";
      color15   = "#ffffff";
    };
  };

  programs.vim = {
    enable = true;
    plugins = with pkgs.vimPlugins; [ vim-airline ];
    settings = { ignorecase = true; };
  };
}
