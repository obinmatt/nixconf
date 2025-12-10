{
  flake.modules.homeManager.shell = {
    programs.zsh = {
      enable = true;
      enableCompletion = true;
      autosuggestion.enable = true;
      syntaxHighlighting.enable = true;
      shellAliases = {
        "nix-shell" = "nix-shell --command zsh";
      };
    };

    programs.bat.enable = true;
    programs.bat.config.theme = "base16";
    programs.fzf.enable = true;
    programs.fzf.enableZshIntegration = true;
    programs.zoxide.enable = true;
    programs.zoxide.enableZshIntegration = true;

    programs.direnv = {
      enable = true;
      enableZshIntegration = true;
      nix-direnv.enable = true;
    };

    programs.eza = {
      enable = true;
      enableZshIntegration = true;
      icons = "auto";
      git = true;
    };

    programs.starship = {
      enable = true;
      settings = {
        scan_timeout = 60;
        command_timeout = 1000;
        character = {
          success_symbol = "[➜](bold green)";
          error_symbol = "[➜](bold red)";
        };
        git_status = {
          conflicted = "⚔️";
          ahead = "🏎️\${count}";
          behind = "🐢\${count}";
          diverged = "🔱 🏎️\${ahead_count} 🐢\${behind_count}";
          untracked = "🤨\${count}";
          stashed = "📦";
          modified = "📝\${count}";
          staged = "🎭\${count}";
          renamed = "📛\${count}";
          deleted = "🗑️\${count}";
          style = "bold red";
        };
        nix_shell = {
          impure_msg = "[impure shell](bold red)";
          pure_msg = "[pure shell](bold green)";
          unknown_msg = "[unknown shell](bold yellow)";
          format = "via [❄️ $state( \($name\))](bold blue) ";
        };
      };
    };
  };
}
