function _koi_spec.renew-repos -a spec lang
  function ___spec_base
    echo '重置仓库与Origin一致'
  end
  function ___spec_man
    echo '重置仓库与Origin一致'
  end

  if test $spec = 'man'
    ___spec_man
  else # include 'base'
    ___spec_base
  end
end
