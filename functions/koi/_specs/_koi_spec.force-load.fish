function _koi_spec.force-load -a spec lang
  function ___spec_base
    echo '强制重新载入目录下所有.fish文件'
  end
  function ___spec_man
    echo '强制重新载入目录下所有.fish文件'
  end

  if test $spec = 'man'
    ___spec_man
  else # include 'base'
    ___spec_base
  end
end
