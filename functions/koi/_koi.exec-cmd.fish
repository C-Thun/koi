function _koi.exec-cmd -a cmd need_root
  if not test -z $need_root; and test (id -u) -ne 0
    set cmd sudo $cmd
  end

  echo "function ___last_command --no-scope-shadowing
    \$argv
  end"

  echo "function ___last_command --no-scope-shadowing
    \$argv
  end" | source
  ___last_command $cmd
end