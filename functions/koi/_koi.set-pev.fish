function _koi.set-pev -a name value
  if test -z "$name"; or test -z "$value"
    echo Usage: koi set-pev \<name\> \<value\>
    return $OMF_UNKNOWN_OPT
  end

  if not test -f $HOME/.koi_pev.fish
    echo '# KOI Persistent Environment Variables' $HOME/.koi_pev.fish
  end

  koi exec-cmd "sed -i '/^set -xg $name $value\$/d' $HOME/.koi_pev.fish"
  koi exec-cmd "sed -i '\$a\\set -xg $name $value' $HOME/.koi_pev.fish"
end

sed '$a\set -xg ddd vvvv' $HOME/.koi_pev.fish