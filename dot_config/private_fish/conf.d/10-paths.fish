for path_entry in \
    /opt/homebrew/bin \
    /opt/homebrew/sbin
    if test -d "$path_entry"
        fish_add_path --global --move --prepend "$path_entry"
    end
end
