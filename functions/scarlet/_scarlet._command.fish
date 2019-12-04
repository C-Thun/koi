function _scarlet._command
  set -l commands setup bbbb
  if test (count $argv) -gt 0
    for command in $commands
      if test "$name" = "$command"
        echo $name
        break
      end
    end
  else
    echo $commands
  end
end