set -l completion_dir $__fish_config_dir/completions
mkdir -p "$completion_dir"; or exit 1

set -l temporary (mktemp "$completion_dir/mise.fish.XXXXXX"); or exit 1
if mise completion fish > "$temporary"
    mv "$temporary" "$completion_dir/mise.fish"; or exit 1
else
    rm -f "$temporary"
    exit 1
end




fish_update_completions
