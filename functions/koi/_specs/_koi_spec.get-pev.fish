function _koi_spec.get-pev -a spec lang
  function ___spec_base
    echo '显示持久化全局变量'
  end
  function ___spec_man
    echo '显示持久化全局变量'
  end

  if test $spec = 'man'
    ___spec_man
  else # include 'base'
    ___spec_base
  end
end
