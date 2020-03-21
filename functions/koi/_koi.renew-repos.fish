function _koi.renew-repos -d 'update repos let same as origin' -a target
  if test ! "$target"
    set target .
  end
  set -l br (git -C $target branch | grep '*' | string split " ")

  git -C $target fetch --all
  git -C $target reset --hard origin/$br[2]
end