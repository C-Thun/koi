# koi register-host # 查看hosts
# koi register-host your-domain 127.0.0.1 # 设置domain
# koi register-host your-domain 0 # 取消设置domain

function _koi.register-host -a domain ip
  set -l cmd sed
  set cmd $cmd -i # 现在一律apply

  if not test -z "$domain"; and not test -z "$ip"
    if test "$ip" = "0"
      koi exec-cmd "$cmd '/\t$domain\t\$/d' /etc/hosts" y
    else
      koi exec-cmd "$cmd '/\t$domain\t\$/d' /etc/hosts" y
      koi exec-cmd "$cmd '\$a\\$ip\t$domain\t' /etc/hosts" y
    end

  else
  end

  cat /etc/hosts
end
