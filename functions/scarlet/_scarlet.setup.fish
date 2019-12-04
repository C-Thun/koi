function _scarlet.setup -a name
  set -l commands setup
  if test -n "$name"
    for command in $commands
      echo $name $command
      if test "$name" = "$command"
        echo $name
        break
      end
    end
  else
    echo $commands
  end
end