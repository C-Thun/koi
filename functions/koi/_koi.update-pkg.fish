function _koi.update-pkg -a pkg
  if not test -z "$pkg"
    koi renew-repos (omf.packages.path $pkg)
    omf update $pkg
  end
end