function _koi.name-localhost -a name
  koi exec-cmd "hostname $name" y
  if test -f /etc/hostname
    koi exec-cmd "echo $name > /etc/hostname" y
  end
end
