function _koi.update-pkg -a pkg
  koi renew-repos (omf.packages.path $pkg)
  omf update $pkg
end