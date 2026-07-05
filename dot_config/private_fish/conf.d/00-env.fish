set -g WATCHBEATS_FISH_PRIVATE_ENV "$HOME/.config/fish/private/watchbeats-secrets.fish"

if test -f "$WATCHBEATS_FISH_PRIVATE_ENV"
    source "$WATCHBEATS_FISH_PRIVATE_ENV"
end
