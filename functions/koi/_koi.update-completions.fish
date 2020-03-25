function _koi.update-completions
  complete -c koi -f
  for subcommand in (_koi.command)
    complete -c koi -f -a $subcommand -n "__fish_use_subcommand"
  end
end