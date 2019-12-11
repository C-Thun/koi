function _kit.renew-repos -a target
  if test ! $target
    set -l target .
  end
  set -l br (git -C $target branch | grep '*')

  echo $br
  # [[ ! $target ]] && target='.'
  # local br=`git -C $target branch | grep '*'`;
  # br=${br/* /}
  # git -C $target fetch --all
  # git -C $target reset --hard origin/${br}
end