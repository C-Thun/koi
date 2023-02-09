function _koi_spec.name-localhost -a spec lang
  function ___spec_base
    echo '设置本机hostname'
  end
  function ___spec_man
    echo '设置本机hostname'
  end

  if test $spec = 'man'
    ___spec_man
  else # include 'base'
    ___spec_base
  end
end
