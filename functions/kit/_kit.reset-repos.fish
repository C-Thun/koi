function _kit.reset-repos
  git add * && git stash && git stash drop
end