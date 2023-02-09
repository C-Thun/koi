function _koi_spec.version -a spec lang
  function ___spec_base
    echo '查看版本'
  end
  function ___spec_man
    echo '查看版本'
  end

  if test $spec = 'man'
    ___spec_man
  else # include 'base'
    ___spec_base
  end
end
