function _koi_spec.dir-func -a spec lang
  function ___spec_base
    echo '查找函数定义文件所在目录'
  end
  function ___spec_man
    echo '查找函数定义文件所在目录'
  end

  if test $spec = 'man'
    ___spec_man
  else # include 'base'
    ___spec_base
  end
end
