function _koi_spec.update-pkg -a spec lang
  function ___spec_base
    echo '更新omf包(支持回滚式更新)'
  end
  function ___spec_man
    echo '更新omf包(支持回滚式更新)'
  end

  if test $spec = 'man'
    ___spec_man
  else # include 'base'
    ___spec_base
  end
end
