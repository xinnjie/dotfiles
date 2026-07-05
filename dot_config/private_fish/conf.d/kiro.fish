if test "$TERM_PROGRAM" = kiro; and type -q kiro
    set -l kiro_integration_path (kiro --locate-shell-integration-path fish 2>/dev/null)
    if test -n "$kiro_integration_path"; and test -f "$kiro_integration_path"
        source "$kiro_integration_path"
    end
end
