# ~/.profile: sourced by POSIX-compatible login shells
# Bash reaches this file through ~/.bash_profile

if [ -z "${BASH_ENV_LOADED:-}" ] && [ -r "$HOME/.bash_env" ]; then
  . "$HOME/.bash_env"
fi
