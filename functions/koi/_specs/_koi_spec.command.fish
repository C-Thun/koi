function _koi_spec.command -a spec lang
  function ___spec_base
    echo 'koi指令列表'
  end
  function ___spec_man
    echo 'koi指令列表'
  end

  if test $spec = 'man'
    ___spec_man
  else # include 'base'
    ___spec_base
  end
end
