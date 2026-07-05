set -gx PYENV_ROOT "$HOME/.pyenv"

if test -d "$PYENV_ROOT/bin"
    fish_add_path --global --move --prepend "$PYENV_ROOT/bin"
end

if type -q pyenv
    pyenv init - fish | source
end
