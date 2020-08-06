function _koi_spec.build-image -a spec lang
  function ___spec_base
    echo '构建镜像'
  end
  function ___spec_man
    echo '构建镜像'
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
