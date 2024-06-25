#!/bin/bash

commit() {
  MESSAGE="$1"

  if [[ -z $MESSAGE ]]; then
    MESSAGE="wip"
  fi

  git commit -m "${MESSAGE}"
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
