# koi mount-disk vdb1 /opt/data01 ashe
function _koi.mount-disk -a dev target user
  if test -z "$dev"; or test -z "$target"
    echo Usage: koi mount-disk \<dev\> \<target\>[ \<user\>]
    return $OMF_UNKNOWN_OPT
  end

  if test -z "$user"
    set user $USER
  end

  # 创建目录
  if not test -d $target
    koi exec-cmd "mkdir -p $target" y
    koi exec-cmd "chown $user:$user $target" y
  end

  set -l tmp (string match -r '^[^ :]+: UUID="([0-9a-z\-]+)" TYPE="([0-9a-zA-Z\-]+)"' (koi exec-cmd "blkid /dev/$dev" y))
  set -l blkid $tmp[2]
  set -l ftype $tmp[3]

  koi exec-cmd "cp -f /etc/fstab /etc/fstab.backup" y
  koi exec-cmd "sed -i '/^UUID=$blkid\t/d' /etc/fstab" y
  koi exec-cmd "sed -i '\$a\\UUID=$blkid\t$target\t$ftype\tdefaults\t0\t2' /etc/fstab" y

  # cat /etc/fstab
  koi exec-cmd "mount -a" y
  koi exec-cmd "mount | grep $target" y
end
