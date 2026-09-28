#!/bin/bash

while true; do
  printf 'New name (blank to cancel):\n'
  if ! IFS= read -r session_name; then
    exit 0
  fi

  if [[ -z "$session_name" ]]; then
    exit 0
  fi

  if zellij action rename-session -- "$session_name"; then
    exit 0
  fi

  printf 'The session name was not changed. Try a different name, or press Enter to cancel.\n' >&2
done
