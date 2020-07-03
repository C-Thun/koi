function _koi.debug -a msg -d "Enable/Disable \$DEBUG var"
  if test -z "$msg"
    if test -z "$DEBUG"
      set -xg DEBUG 1
      echo DEBUG is Enabled
    else
      set -xg DEBUG
      echo DEBUG is Disabled
    end
  end

  if not test -z "$DEBUG"
    echo $msg
  end
end