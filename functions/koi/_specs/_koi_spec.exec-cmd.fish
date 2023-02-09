function _koi_spec.exec-cmd -a spec lang
  function ___spec_base
    echo '动态执行脚本'
  end
  function ___spec_man
    echo '动态执行脚本'
  end

  if test $spec = 'man'
    ___spec_man
  else # include 'base'
    ___spec_base
  end
end
