function _koi_spec.look-port -a spec lang
  function ___spec_base
    echo '检查端口占用'
  end
  function ___spec_man
    echo '检查端口占用'
  end

  if test $spec = 'man'
    ___spec_man
  else # include 'base'
    ___spec_base
  end
end
