function env-template --description 'Replace .env values with scoped placeholders' --argument-names env_file scope
    if test (count $argv) -ne 2
        echo 'Usage: env-template FILE team|environment|project' >&2
        return 2
    end

    if not contains -- "$scope" team environment project
        echo 'env-template: scope must be team, environment, or project' >&2
        return 2
    end

    if not test -f "$env_file"; or not test -r "$env_file"
        echo "env-template: cannot read file: $env_file" >&2
        return 1
    end

    command awk -v scope="$scope" '
        /^[ \t]*(export[ \t]+)?[A-Za-z_][A-Za-z0-9_]*[ \t]*=/ {
            key = $0
            sub(/=.*/, "", key)
            sub(/^[ \t]*(export[ \t]+)?/, "", key)
            sub(/[ \t]*$/, "", key)
            sub(/=.*/, "={{" scope "." key "}}")
        }
        { print }
    ' < "$env_file"
end
