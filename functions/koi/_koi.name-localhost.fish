function _koi.name-localhost -a name
  if test -z "$name"
    echo Usage: koi name-localhost \<name\>
    return 0
  end

  koi exec-cmd "hostname $name" y
  if test -f /etc/hostname
    koi exec-cmd "echo $name > /etc/hostname" y
  end
end
