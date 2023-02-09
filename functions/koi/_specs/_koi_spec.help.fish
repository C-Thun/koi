function _koi_spec.help -a spec lang
  function ___spec_base
    echo '帮助信息'
  end
  function ___spec_man
    echo 'koi相关函数帮助信息'
  end

  if test $spec = 'man'
    ___spec_man
  else # include 'base'
    ___spec_base
  end
end
