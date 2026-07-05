set -gx FZF_DEFAULT_OPTS "--ansi --preview-window 'right:40%' --preview 'bat --color=always --style=header,grid --line-range :300 {}'"

if test -d /opt/homebrew/opt/fzf/bin
    fish_add_path --global --move --append /opt/homebrew/opt/fzf/bin
end

if test -f /opt/homebrew/opt/fzf/shell/key-bindings.fish
    source /opt/homebrew/opt/fzf/shell/key-bindings.fish
    if status is-interactive; and functions -q fzf_key_bindings
        fzf_key_bindings
    end
end
