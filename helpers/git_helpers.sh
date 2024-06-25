#!/bin/bash

commit() {
  MESSAGE="$1"

  if [[ -z $MESSAGE ]]; then
    MESSAGE="wip"
  fi

  git add .
  git commit -m "${MESSAGE}"
}

commitpush() {
  MESSAGE="$1"

  if [[ -z $MESSAGE ]]; then
    MESSAGE="wip"
  fi

  git add .
  git commit -m "${MESSAGE}"
  git push
}

pullrebase() {
  git add .
  git stash
  git pull --rebase
  git stash pop
}

gitclean() {
  git gc
  git trim
}

prlist() {
  gh pr list --search "is:pr is:merged merged:>=$(date +%Y-%m-01)"
}
