function _koi.force-load -a dir
  if test -z "$name"; or test -z "$value"
    echo Usage: koi set-rc \<name\> \<value\>
    return $OMF_UNKNOWN_OPT
  end

  if not test -f $HOME/.koirc.fish
    echo '# KOI Persistent Environment Variables' > $HOME/.koirc.fish
  end

  koi exec-cmd "sed -i '/^set -xg $name $value\$/d' $HOME/.koirc.fish"
  koi exec-cmd "sed -i '\$a\\set -xg $name $value' $HOME/.koirc.fish"

  set -xg "$name" "$value"
end
