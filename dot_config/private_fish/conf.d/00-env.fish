set -g APIKEY_ENV "$HOME/.config/fish/private/apikey.fish"

if test -f "$APIKEY_ENV"
    source "$APIKEY_ENV"
end
