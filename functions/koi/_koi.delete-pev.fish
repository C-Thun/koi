function _koi.delete-pev -a name
  if test -z "$name"
    echo Usage: koi delete-pev \<name\>
    return $OMF_UNKNOWN_OPT
  end

  if not test -f $HOME/koi_pev.fish
    touch $HOME/koi_pev.fish
  end

  sed '/^set -xg $name $value\$/d' $HOME/koi_pev.fish
end
