{ pkgs, misc, ... }: {

  imports = [
    ./git.nix
    ./zsh.nix
  ];
  programs = {
    thefuck = {
      enable = true;
      enableZshIntegration = true;
    };
    topgrade.enable = true; 
    jq.enable = true; 
    vscode.enable = true; 
    gh.enable = true; 
    dircolors.enable = true; 
    starship = {
      enable = true;
      enableBashIntegration = false;
      enableZshIntegration = true;
    };
    bat.enable = true; 
    neovim = {
      enable = true;
      defaultEditor = true;
      viAlias = true;
      vimAlias = true;
    };
    btop.enable = true; 
    atuin = {
      enable = true;
      enableZshIntegration = true;
    };
    eza = {
      enable = true;
      enableAliases = true;
      icons = true;
      git = true;
    };
    fzf = {
      enable = true;
      enableZshIntegration = true;
    };
    k9s.enable = true; 
    alacritty.enable = true; 
    mcfly.enable = true; 
    navi = {
      enable = true;
      enableZshIntegration = true;
    };
    nix-index = {
      enable = true;
      enableZshIntegration = true;
    };
  };
}

