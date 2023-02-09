function _koi_spec.kc-exec -a spec lang
  function ___spec_base
    echo 'kubectl exec'
  end
  function ___spec_man
    echo 'kubectl exec'
  end

  if test $spec = 'man'
    ___spec_man
  else # include 'base'
    ___spec_base
  end
end
