{ pkgs, misc, ... }: {
  #programs.zsh.profileExtra = ''
  #  [ -r ~/.nix-profile/etc/profile.d/nix.sh ] && source  ~/.nix-profile/etc/profile.d/nix.sh
  #  export XCURSOR_PATH=$XCURSOR_PATH:/usr/share/icons:~/.local/share/icons:~/.icons:~/.nix-profile/share/icons
  #'';
  
  programs.zsh = {
    enableCompletion = true;
    enable = true;
    syntaxHighlighting = {
      enable = true;
    };
  };
}
