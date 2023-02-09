function _koi_spec.register-host -a spec lang
  function ___spec_base
    echo '注册/注销域名指向'
  end
  function ___spec_man
    echo '注册/注销域名指向'
  end

  if test $spec = 'man'
    ___spec_man
  else # include 'base'
    ___spec_base
  end
end
