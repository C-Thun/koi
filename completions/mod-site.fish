complete -c mod-site -f
complete -c mod-site -n "not __fish_seen_subcommand_from enable disable" -a "enable disable"
complete -c mod-site -n "__fish_seen_subcommand_from enable" -f -a (string join ' ' (ls /etc/nginx/sites-available))
complete -c mod-site -n "__fish_seen_subcommand_from disable" -f -a (string join ' ' (ls /etc/nginx/sites-enabled))
