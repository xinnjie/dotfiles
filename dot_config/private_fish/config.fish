if status is-interactive
    set -g fish_greeting
    # Commands to run in interactive sessions can go here
end

# Added by OrbStack: command-line tools and integration
# This won't be added again if you remove it.
source ~/.orbstack/shell/init2.fish 2>/dev/null || :

# Firehorse webpage clipper development browser.
set -gx FIREHORSE_CHROME_PROFILE "/Users/xinnjie/Library/Application Support/Firehorse/Chrome Dev"
set -gx FIREHORSE_BRAVE_PROFILE "/Users/xinnjie/Library/Application Support/Firehorse/Brave Dev"

zoxide init fish | source

# Added by Devin
fish_add_path /Users/xinnjie/.codeium/windsurf/bin
export PATH="$HOME/.local/bin:$PATH"
