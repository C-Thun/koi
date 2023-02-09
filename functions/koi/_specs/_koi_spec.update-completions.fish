function _koi_spec.update-completions -a spec lang
  function ___spec_base
    echo '更新koi子命令自动完成'
  end
  function ___spec_man
    echo '更新koi子命令自动完成'
  end

  if test $spec = 'man'
    ___spec_man
  else # include 'base'
    ___spec_base
  end
end
