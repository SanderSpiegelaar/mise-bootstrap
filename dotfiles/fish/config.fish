if test -x /home/linuxbrew/.linuxbrew/bin/brew
    /home/linuxbrew/.linuxbrew/bin/brew shellenv fish | source
end

for file in ~/.config/fish/conf.d/custom/*.fish
    source "$file"
end

if status is-interactive
    if functions -q fzf_configure_bindings
        fzf_configure_bindings --history=
    end

    command -q atuin; and atuin init fish | source
    command -q starship; and starship init fish | source
    command -q zoxide; and zoxide init fish | source

    source ~/.config/fish/aliases.fish
end
# >>> mise:activate >>> managed by mise — do not edit between markers
mise activate fish | source
# <<< mise:activate <<<
