function _koi_spec.delete-pev -a spec lang
  function ___spec_base
    echo '删除一个持久化全局变量'
  end
  function ___spec_man
    echo '删除一个持久化全局变量'
  end

  if test $spec = 'man'
    ___spec_man
  else # include 'base'
    ___spec_base
  end
end
