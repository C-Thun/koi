function _koi_spec.clean-repos-uncommits -a spec lang
  function ___spec_base
    echo '清除未提交的变更'
  end
  function ___spec_man
    echo '清除未提交的变更'
  end

  if test $spec = 'man'
    ___spec_man
  else # include 'base'
    ___spec_base
  end
end
