# Always provide completions for command line utilities.
#
# Check Fish documentation about completions:
# http://fishshell.com/docs/current/commands.html#complete
#
# If your package doesn't provide any command line utility,
# feel free to remove completions directory from the project.

complete -c "koi mod-site" -f
complete -c "koi mod-site" -n "not __fish_seen_subcommand_from enable disable" -a "enable disable"
complete -c "koi mod-site" -n "__fish_seen_subcommand_from enable" -f -a (string join ' ' (ls /etc/nginx/sites-available))
complete -c "koi mod-site" -n "__fish_seen_subcommand_from disable" -f -a (string join ' ' (ls /etc/nginx/sites-enabled))