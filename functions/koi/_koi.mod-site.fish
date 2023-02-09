function _koi.mod-site -a mod
  if test -z "$mod"; or test -z $argv[2]
    echo Usage: mod-site \<enable\|disable\> \<...sites\>
  end
  if not test $mod = 'enable'
      and not test $mod = 'disable'
      echo The mod can only be 'enable' or 'disable'
      return 1
  end

  set -l fromDir /etc/nginx/sites-available
  set -l toDir /etc/nginx/sites-enabled

  for site in $argv[2..-1]
    if test $mod = 'enable'
      if not test -e $toDir/$site; and test -e $fromDir/$site
        sudo ln -s $fromDir/$site $toDir/$site
      end
    else
      sudo rm -f $toDir/$site
    end
  end

  sudo systemctl restart nginx

  # 刷新 completions
  complete -c koi -n "__fish_seen_subcommand_from mod-site" -e
  complete -c koi -n "__fish_seen_subcommand_from mod-site" -a "enable disable"
  complete -c koi -n "__koi_subcommand_flow mod-site enable" -e
  complete -c koi -n "__koi_subcommand_flow mod-site enable" -f -a (string join ' ' (ls /etc/nginx/sites-available))
  complete -c koi -n "__koi_subcommand_flow mod-site disable" -e
  complete -c koi -n "__koi_subcommand_flow mod-site disable" -f -a (string join ' ' (ls /etc/nginx/sites-enabled))
end
