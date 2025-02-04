#!/usr/bin/env bash

_git_path=$(echo "$0" | awk -F '.gits/' '{print $1}')
cd "$_git_path" || exit 0

__main() {
    git rm -r --cached .
    git checkout --orphan latest_branch
    git add -A
    git commit -am "clear commit"
    git branch -D main
    git branch -m main
    git push -f origin main

}
__main

__help() {
    cat >/dev/null <<-'AEOF'


AEOF
}
