function _koi.debug -d "Enable/Disable \$DEBUG var"
  if test -z "$DEBUG"
    set -xg DEBUG 1
    echo DEBUG is Enabled
  else
    set -xg DEBUG
    echo DEBUG is Disabled
  end
end