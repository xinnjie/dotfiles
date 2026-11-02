set -g APIKEY_ENV "$HOME/.config/fish/private/apikey.fish"

if test -f "$APIKEY_ENV"
    source "$APIKEY_ENV"
end

# Clean up legacy Anthropic proxy variables inherited from parent processes (e.g. herdr server)
set -e ANTHROPIC_BASE_URL
set -e ANTHROPIC_AUTH_TOKEN
set -e ANTHROPIC_MODEL
set -e CLAUDE_CODE_SUBAGENT_MODEL

