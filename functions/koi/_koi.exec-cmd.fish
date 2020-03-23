function _koi.exec-cmd
  echo "function ___last_command --no-scope-shadowing
    $argv
  end" | source
  ___last_command $argv
end