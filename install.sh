
# Quick execute
set -e

if ! command -v git >/dev/null; then
    echo "Error: git is required to install scipter." 1>&2
    exit 1
fi

scripter_uri="https://github.com/uwucraft/scripter.git"

scripter_install="${SCRIPTER_INSTALL:-$HOME/.scripter}"
bin_dir="$scripter_install/bin"
exec="$bin_dir/scripter"


git clone "$scripter_uri" "$scripter_install"

echo "Scripter was installed successfully to $exec"
if command -v scripter >/dev/null; then
    echo "Run 'scripter help' to get started"
else
    case $SHELL in
    /bin/zsh) shell_profile=".zshrc" ;;
    *) shell_profile=".bash_profile" ;;
    esac
    echo "Manually add the directory to your \$HOME/$shell_profile (or similar)"
    echo "  export SCRIPTER_INSTALL=\"$scripter_install\""
    echo "  export PATH=\"\$SCRIPTER_INSTALL/bin:\$PATH\""
    echo "Run '$exec help' to get started"
fi
