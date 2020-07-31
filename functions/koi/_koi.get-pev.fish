function _koi.get-pev -a name
  if not test -f $HOME/.koi_pev.fish
    touch $HOME/.koi_pev.fish
  end

  if test -z "$name"
    cat $HOME/.koi_pev.fish
  else
    cat $HOME/.koi_pev.fish | grep $name
  end

end
