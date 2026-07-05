set -gx PNPM_HOME "$HOME/Library/pnpm"

if test -d "$PNPM_HOME"
    fish_add_path --global --move --prepend "$PNPM_HOME"
end
