function _koi.get-rc -a name
  if not test -f $HOME/.koirc.fish
    echo '# KOI Persistent Environment Variables' > $HOME/.koirc.fish
  end

  set -l tmp
  for line in (string split "\n" (cat $HOME/.koirc.fish))
    set tmp (string match -r '^set \-xg ([^\s]+) ([^\s]+)$' $line)
    if not test (count $tmp) -eq 3
      continue
    end

    if not test -z "$name"; and not test $tmp[2] = $name
      continue
    end
    echo {$tmp[2]}={$tmp[3]}
  end
end
