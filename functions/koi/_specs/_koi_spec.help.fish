function _koi_spec.help -a spec lang
  function ___spec_base
    echo '帮助信息'
  end
  function ___spec_man
    echo 'koi相关函数帮助信息'
  end

  if test $spec = 'man'
    switch $lang
      case en_US.UTF-8
        ___spec_man
      case zh_CN.UTF-8
        ___spec_man
    end
  else # include 'base'
    switch $lang
      case en_US.UTF-8
        ___spec_base
      case zh_CN.UTF-8
        ___spec_base
    end
  end
  echo '帮助信息'
end
