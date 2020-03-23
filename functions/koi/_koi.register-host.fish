function _koi.register-host -a domain ip apply
  if test (id -u) -eq 0
    set -l cmd sed
  else
    set -l cmd sudo sed
  end

  if not test -z $apply
    set cmd $cmd -i
  end

  if test -z $ip
    koi exec-cmd "$cmd '/\t$domain\t\$/d' /etc/hosts"
  else
    koi exec-cmd "$cmd '/\t$domain\t\$/d' /etc/hosts"
    koi exec-cmd "$cmd '$a $ip\t$domain\t' /etc/hosts"
  end

  if not test -z $apply
    cat /etc/hosts
  end

end
