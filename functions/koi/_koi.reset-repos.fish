function _koi.reset-repos -d 'drop all local modify' -a target
  if test ! "$target"
    set target .
  end

  git -C $target add * && git -C $target stash && git -C $target stash drop
end