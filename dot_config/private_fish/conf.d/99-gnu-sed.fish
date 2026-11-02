# Prefer GNU sed over macOS's built-in BSD sed.
# Why: BSD sed (in /usr/bin) is POSIX-ish and lacks GNU extensions we rely on:
#   - `sed -i` requires a backup suffix argument (GNU allows `-i` alone)
#   - no `\s` / `\S`, no `\+` / `\?` in BRE, no `--version`, no `-z`
#   - different `-E` vs `-r` handling and different `a`/`i`/`c` syntax
# Homebrew's gnu-sed ships `gsed`; the `libexec/gnubin` dir exposes it as `sed`
# (plus a matching `man` page), so prepending it makes `sed` mean GNU sed.
# Named 99-* so it loads after the other conf.d files (10-paths, node, python,
# rust, ...) that prepend their own dirs; the last prepend wins.
set -l gnu_sed_bin /opt/homebrew/opt/gnu-sed/libexec/gnubin
if test -d $gnu_sed_bin
    fish_add_path --global --move --prepend $gnu_sed_bin
end
