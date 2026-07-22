# ~/.bash_profile: sourced by Bash login shells
# Loads shared environment state and interactive setup when appropriate

if [ -r "$HOME/.profile" ]; then
  . "$HOME/.profile"
fi

case $- in
  *i*)
    if [ -r "$HOME/.bashrc" ]; then
      . "$HOME/.bashrc"
    fi
    ;;
esac
