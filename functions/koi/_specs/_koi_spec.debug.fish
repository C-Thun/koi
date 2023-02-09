function _koi_spec.debug -a spec lang
  function ___spec_base
    echo '开关DEUBG模式'
  end
  function ___spec_man
    echo '开关DEUBG模式'
  end

  if test $spec = 'man'
    ___spec_man
  else # include 'base'
    ___spec_base
  end
end
