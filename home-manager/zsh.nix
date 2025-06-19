{ pkgs, ... }: 

{
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    syntaxHighlighting.enable = true;

    zplug = {
      enable = true;
      plugins = [
      {name = "zsh-users/zsh-autosuggestions";}
      {
        name = "romkatv/powerlevel10k";
        tags = [ "as:theme" "depth:1" ];
      }
     ];
    };

    oh-my-zsh = {
      enable = true;
      plugins = [
	      "git"
      ];
    };
    initContent = ''
      [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
    '';
  };
}
