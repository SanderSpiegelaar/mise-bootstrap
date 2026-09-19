set -q EDITOR; or set -gx EDITOR nvim
set -q VISUAL; or set -gx VISUAL $EDITOR

set -gx fzf_preview_dir_cmd eza --all --color=always
set -gx GITLAB_HOST "https://git.visymo.com"
set -gx OMLX_PORT 8118
set -gx OMLX_MODEL_DIR "~/Models"

set fish_greeting ""

set -gx fish_color_autosuggestion '555'  'brblack'
set -gx fish_color_cancel -r
set -gx fish_color_command --bold
set -gx fish_color_comment red
set -gx fish_color_cwd green
set -gx fish_color_cwd_root red
set -gx fish_color_end brmagenta
set -gx fish_color_error brred
set -gx fish_color_escape 'bryellow'  '--bold'
set -gx fish_color_history_current --bold
set -gx fish_color_host normal
set -gx fish_color_match --background=brblue
set -gx fish_color_normal normal
set -gx fish_color_operator bryellow
set -gx fish_color_param cyan
set -gx fish_color_quote yellow
set -gx fish_color_redirection brblue
set -gx fish_color_search_match 'bryellow'  '--background=brblack'
set -gx fish_color_selection 'white'  '--bold'  '--background=brblack'
set -gx fish_color_user brgreen
set -gx fish_color_valid_path --underline
