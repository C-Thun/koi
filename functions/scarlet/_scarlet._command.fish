function _scarlet._command -a name
  set -l commands setup bbbb
  if name
    for command in $commands
      if test $name = $command
        echo $name
        break
      end
    end
  else
    echo $commands
  end
end