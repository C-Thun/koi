function _koi_spec.nohup -a spec lang
  function ___spec_base
    echo '后台执行fish函数'
  end
  function ___spec_man
    echo '后台执行fish函数'
  end

  if test $spec = 'man'
    ___spec_man
  else # include 'base'
    ___spec_base
  end
end
