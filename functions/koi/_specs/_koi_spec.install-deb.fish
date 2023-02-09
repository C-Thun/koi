function _koi_spec.install-deb -a spec lang
  function ___spec_base
    echo '安装远程deb包'
  end
  function ___spec_man
    echo '安装远程deb包'
  end

  if test $spec = 'man'
    ___spec_man
  else # include 'base'
    ___spec_base
  end
end
