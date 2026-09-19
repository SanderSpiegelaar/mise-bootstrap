fish_add_path ~/.local/bin
fish_add_path ~/.bun/bin

if not contains -- ~/.config/fish/functions/custom $fish_function_path
    set -p fish_function_path ~/.config/fish/functions/custom
end

switch (uname)
case Linux
    if test -x /home/linuxbrew/.linuxbrew/bin/brew
        fish_add_path /home/linuxbrew/.linuxbrew/bin
        fish_add_path /home/linuxbrew/.linuxbrew/sbin
    end
case Darwin
    if test -x /opt/homebrew/bin/brew
        fish_add_path /opt/homebrew/bin
        fish_add_path /opt/homebrew/sbin
    end
end
