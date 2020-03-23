function _koi_spec.build-bin-link -a spec lang
  function ___spec_base
    echo '将目录下文件创建为可执行软链'
  end
  function ___spec_man
    echo '将目录下文件创建为可执行软链'
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
end
