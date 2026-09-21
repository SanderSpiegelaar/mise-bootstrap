status is-interactive; or return

if command -q eza
    alias ls='eza --classify=auto --color --group-directories-first --sort=extension -A'
    alias lsa='eza -lah --icons=auto --group-directories-first --git'
    alias lsl='eza -lh --icons=auto --group-directories-first --git'
    alias lst='eza --tree --level=2 --icons=auto --group-directories-first'
    alias lsta='eza --tree --level=2 -a --icons=auto --group-directories-first'
end

if command -q bat
    alias cat='bat'
    alias cats='bat --paging never --style plain'
end

command -q lazysql; and alias lsql='lazysql'
command -q lazyssh; and alias lssh='lazyssh'
command -q lazydocker; and alias ld='lazydocker'
command -q cursor; and alias code='cursor'

command -q docker; and alias dcu='docker compose up -d'
command -q docker; and alias dcd='docker compose down'

command -q nvim; and alias nv='nvim'

alias cd='z'
alias cdi='zi'
alias rl='exec fish'
alias cl='clear'

alias du='dust'

alias fc='fish_clipboard_copy'

alias env-compose-parse='compose-env'
alias env-parse-coolify=

alias falias='$EDITOR ~/.config/fish/conf.d/aliases.fish'
alias fishconf='$EDITOR ~/.config/fish/config.fish'
alias editconf='fishconf'

alias pvenv='source .venv/bin/activate.fish'

alias glea='git push --force-with-lease origin (git branch --show-current)'

alias updates='topgrade --yes --no-ask-retry'
