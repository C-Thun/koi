function _scarlet._command -a name
  set -l commands setup
  if test (count $argv) -gt 0
    for command in $commands
      if test "$name" = "$command"
        echo $command
        break
      end
    end
  else
    echo $commands
  end
end