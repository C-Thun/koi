# Always provide completions for command line utilities.
#
# Check Fish documentation about completions:
# http://fishshell.com/docs/current/commands.html#complete
#
# If your package doesn't provide any command line utility,
# feel free to remove completions directory from the project.

complete -c koi -n "__fish_seen_subcommand_from mod-site" -a "enable disable"
complete -c koi -n "__koi_subcommand_flow mod-site enable" -f -a (string join ' ' (ls /etc/nginx/sites-available))
complete -c koi -n "__koi_subcommand_flow mod-site disable" -f -a (string join ' ' (ls /etc/nginx/sites-enabled))