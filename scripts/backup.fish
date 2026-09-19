function backup_and_bootstrap
    set -l backup "$HOME/config-backups/"(date +%Y%m%d-%H%M%S)
    mkdir -p "$backup"; or return 1

    for name in starship.toml topgrade.toml eza nvim fish atuin bat
        set -l source "$HOME/.config/$name"
        if test -e "$source"; or test -L "$source"
            mv "$source" "$backup/$name"; or return 1
        end
    end

    echo "Backup: $backup"
end

backup_and_bootstrap
