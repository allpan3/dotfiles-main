# ~/.bash_profile: sourced by Bash login shells
# Loads shared environment state and interactive setup when appropriate

if [ -r "$HOME/.profile" ]; then
  . "$HOME/.profile"
fi

# macOS /etc/profile runs path_helper and puts system directories first.
# Restore Homebrew priority when BASH_ENV_LOADED skips environment setup.
# Use a direct prepend; duplicate entries do not change command selection.
if [[ $OSTYPE == darwin* && -n ${HOMEBREW_PREFIX:-} ]]; then
  export PATH="$HOMEBREW_PREFIX/bin:$HOMEBREW_PREFIX/sbin:$PATH"
fi

case $- in
  *i*)
    if [ -r "$HOME/.bashrc" ]; then
      . "$HOME/.bashrc"
    fi
    ;;
esac
