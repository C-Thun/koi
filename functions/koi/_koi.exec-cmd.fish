function _koi.exec-cmd -a cmd need_root debug
  if not test -z $need_root; and test (id -u) -ne 0
    set cmd sudo $cmd
  end

  # echo "function ___last_command --no-scope-shadowing
  #   $cmd
  # end"

  if not test -z $debug
    echo ">>> exec cmd: $cmd"
  end

  echo "function ___last_command --no-scope-shadowing
    $cmd
  end" | source
  ___last_command
end