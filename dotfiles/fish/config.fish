      if test -x /home/linuxbrew/.linuxbrew/bin/brew
          /home/linuxbrew/.linuxbrew/bin/brew shellenv fish | source
      end

      # Activate mise
      if test -x "$HOME/.local/bin/mise"
          "$HOME/.local/bin/mise" activate fish | source
      end

      if status is-interactive
          command -q atuin; and atuin init fish | source
          command -q starship; and starship init fish | source
          command -q zoxide; and zoxide init fish | source
          command -q fnox; and fnox activate fish | source
      end
