function reload --description "Reload Fish configuration"
    source "$HOME/.config/fish/config.fish"

    for file in "$HOME"/.config/fish/conf.d/*.fish
        source $file
    end

    echo "Config reloaded"
end
