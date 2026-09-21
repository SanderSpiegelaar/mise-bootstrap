function compose-env --description 'Create .env.example from Compose variables'
    if test (count $argv) -gt 2
        echo 'Usage: compose-env [compose-file] [output-file]' >&2
        return 2
    end

    set -l compose_file docker-compose.yaml
    set -l output_file .env.example
    set -q argv[1]; and set compose_file "$argv[1]"
    set -q argv[2]; and set output_file "$argv[2]"

    if test -z "$compose_file"; or test -z "$output_file"; or test -d "$output_file"; or test "$compose_file" -ef "$output_file"
        echo 'compose-env: provide nonempty paths; output must not be a directory or the Compose file' >&2
        return 2
    end

    # Keep the temporary file beside the destination for an atomic rename.
    set -l tmp (command mktemp -- "$output_file.tmp.XXXXXX")
    or return $status

    command docker compose -f "$compose_file" config --variables --format json \
        | command jq -r 'keys[] + "="' > "$tmp"
    set -l codes $pipestatus

    for code in $codes
        if test "$code" -ne 0
            command rm -f -- "$tmp"
            return $code
        end
    end

    command mv -f -- "$tmp" "$output_file"
    set -l code $status
    if test "$code" -ne 0
        command rm -f -- "$tmp"
    end
    return $code
end
