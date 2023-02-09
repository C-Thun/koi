function _koi_spec.kc-mass -a spec lang
  function ___spec_base
    echo '批量执行kubectl操作'
  end
  function ___spec_man
    echo '批量执行kubectl操作'
  end

  if test $spec = 'man'
    ___spec_man
  else # include 'base'
    ___spec_base
  end
end
