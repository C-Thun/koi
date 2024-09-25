function _koi.delete-rc -a name
  if test -z "$name"
    echo Usage: koi delete-rc \<name\>
    return $OMF_UNKNOWN_OPT
  end

  if not test -f $HOME/.koirc.fish
    echo '# KOI Persistent Environment Variables' > $HOME/.koirc.fish
  end

  koi exec-cmd "sed -i '/^set -xg $name/d' $HOME/.koirc.fish"

  set -xge $name
end
