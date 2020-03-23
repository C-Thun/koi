function _koi.register-host -a domain ip apply
  set -l cmd sed
  if not test -z $apply
    set cmd $cmd -i
  end

  if test "$ip" = "0"
    koi exec-cmd "$cmd '/\t$domain\t\$/d' /etc/hosts" y
  else
    koi exec-cmd "$cmd '/\t$domain\t\$/d' /etc/hosts" y
    koi exec-cmd "$cmd '\$a\\$ip\t$domain\t' /etc/hosts" y
  end

  if not test -z $apply
    cat /etc/hosts
  end

end
