function _koi_spec.mount-disk -a spec lang
  function ___spec_base
    echo '自动化挂载磁盘'
  end
  function ___spec_man
    echo '自动化挂载磁盘'
  end

  if test $spec = 'man'
    ___spec_man
  else # include 'base'
    ___spec_base
  end
end
