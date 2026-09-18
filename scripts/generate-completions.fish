set -l completion_dir $__fish_config_dir/completions
mkdir -p "$completion_dir"; or exit 1

mise completion fish > "$completion_dir/mise.fish" || exit 1
docker completion fish > "$completion_dir/docker.fish" || exit 1
atuin gen-completions --shell fish > "$completion_dir/atuin.fish" || exit 1
bat --completion fish > "$completion_dir/bat.fish" || exit 1
fd --gen-completions > "$completion_dir/fd.fish" || exit 1
gh completion -s fish > "$completion_dir/gh.fish" || exit 1
fx --comp fish > "$completion_dir/fx.fish" || exit 1
rg --generate complete-fish > "$completion_dir/rg.fish" || exit 1
starship completions fish > "$completion_dir/starship.fish" || exit 1
uv generate-shell-completion fish > "$completion_dir/uv.fish" || exit 1
uvx --generate-shell-completion fish > "$completion_dir/uvx.fish" || exit 1
yq completion fish > "$completion_dir/yq.fish" || exit 1

curl -L https://raw.githubusercontent.com/httpie/cli/refs/heads/master/extras/httpie-completion.fish -o "$completion_dir/httpie.fish" || exit 1
curl -L https://raw.githubusercontent.com/oven-sh/bun/refs/heads/main/completions/bun.fish -o "$completion_dir/bun.fish" || exit 1
curl -L https://raw.githubusercontent.com/bootandy/dust/refs/heads/master/completions/dust.fish -o "$completion_dir/dust.fish" || exit 1
curl -L https://raw.githubusercontent.com/eza-community/eza/refs/heads/main/completions/fish/eza.fish -o "$completion_dir/eza.fish" || exit 1
curl -L https://raw.githubusercontent.com/tealdeer-rs/tealdeer/refs/heads/main/completion/fish_tealdeer -o "$completion_dir/tealdeer.fish" || exit 1

fish_update_completions
