function _koi._command -a name
  set -l commands help up-lib register-host install-deb pull-file renew-repos reset-repos turn-site
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