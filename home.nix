{pkgs, ...}: {
  # The home.packages option allows you to install Nix packages into your
  # environment.
  home.packages = with pkgs; [
    nerd-fonts.jetbrains-mono
    font-awesome
    neovim-flake
  ];
  fonts.fontconfig.enable = true;

  home.sessionVariables = {
    PAGER = "less";
    CLICLOLOR = 1;
    EDITOR = "nvim";
  };

  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;
    shellAliases = {
      nixswitch = "sudo nixos-rebuild switch --flake /etc/nixos/Config/#default";
      nixup = "pushd /etc/nixos/Config; nix flake update; nixswitch; popd";
      "nix-shell" = "nix-shell --command zsh";
    };
  };

  programs.bat.enable = true;
  programs.bat.config.theme = "base16";
  programs.fzf.enable = true;
  programs.fzf.enableZshIntegration = true;
  programs.zoxide.enable = true;
  programs.zoxide.enableZshIntegration = true;
  programs.git.enable = true;
  programs.git.userName = "obinmatt";

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

  programs.ghostty = {
    enable = true;
    settings = {
      theme = "cyberdream";
      background-opacity = 0.9;
      window-padding-x = 12;
      window-padding-y = 12;
    };
    themes = {
      cyberdream = {
        background = "#16181a";
        cursor-color = "#ffffff";
        foreground = "#ffffff";
        palette = [
          "0=#16181a"
          "1=#ff6e5e"
          "2=#5eff6c"
          "3=#f1ff5e"
          "4=#5ea1ff"
          "5=#bd5eff"
          "6=#5ef1ff"
          "7=#ffffff"
          "8=#3c4048"
          "9=#ff6e5e"
          "10=#5eff6c"
          "11=#f1ff5e"
          "12=#5ea1ff"
          "13=#bd5eff"
          "14=#5ef1ff"
          "15=#ffffff"
        ];
        selection-background = "#3c4048";
        selection-foreground = "#ffffff";
      };
    };
  };

  # This value determines the Home Manager release that your configuration is
  # compatible with. This helps avoid breakage when a new Home Manager release
  # introduces backwards incompatible changes.
  #
  # You should not change this value, even if you update Home Manager. If you do
  # want to update the value, then make sure to first check the Home Manager
  # release notes.
  home.stateVersion = "25.05"; # Please read the comment before changing.
}
