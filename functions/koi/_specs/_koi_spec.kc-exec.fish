function _koi_spec.kc-exec -a spec lang
  function ___spec_base
    echo 'kubectl exec'
  end
  function ___spec_man
    echo 'kubectl exec'
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
