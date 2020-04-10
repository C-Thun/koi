function _koi.mount-disk -a dev target
  if test -z "$dev"; or test -z "$target"
    echo Usage: koi mount-disk \<dev\> \<target\>
    return $OMF_UNKNOWN_OPT
  end

  koi exec-cmd "blkid /dev/$dev" y
end