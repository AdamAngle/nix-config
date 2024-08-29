{ pkgs, ... }: {
  programs.zsh = {
    enable = true;

    initExtra = ''
      function activate_venv() {
        if [ -d "./venv" ]; then
          source ./venv/bin/activate
        fi
      }
      
      activate_venv
      export VCPKG_ROOT=$HOME/vcpkg
      export PATH=$VCPKG_ROOT:$PATH
      export EDITOR="nvim"
      export PATH=/opt/homebrew/bin:$PATH
      export PATH=~/.local/bin:$PATH
      autoload -Uz compinit && compinit
      . "$HOME/.cargo/env"
      source <(fzf --zsh)
      eval "$(atuin init zsh)"
    
      if [ -f $HOME/.config/zsh/zshrc ]; then
        source $HOME/.config/zsh/zshrc
      fi
    '';
    autocd = true;

    oh-my-zsh = {
      enable = true;
      plugins = [ "git" ];
      theme = "robbyrussell";
    };
  };
}
