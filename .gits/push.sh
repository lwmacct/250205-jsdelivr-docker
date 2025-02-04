#!/usr/bin/env bash

_git_path=$(echo "$0" | awk -F '.gits/' '{print $1}')
cd "$_git_path" || exit 0

__main() {
    echo "Git:  $_git_path"

    git add .
    git commit -m "update"
    git push -u origin main
}
__main

__help() {
    cat >/dev/null <<-'AEOF'


AEOF
}
