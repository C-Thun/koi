function _koi.set-pev -a name value
  if test -z "$name"; or test -z "$value"
    echo Usage: koi set-pev \<name\> \<value\>
    return $OMF_UNKNOWN_OPT
  end

  if not test -f $HOME/koi_pev.fish
    touch $HOME/koi_pev.fish
  end

  sed '/^set -xg $name $value\$/d' $HOME/koi_pev.fish
  sed '\$a\\set -xg $name $value' $HOME/koi_pev.fish
end
