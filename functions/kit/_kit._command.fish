function _kit._command -a name
  set -l commands renew-repos reset-repos exec-docker
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