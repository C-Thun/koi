function __koi_no_subcommand_from
    set -l cmd (commandline -poc)
    set -e cmd[1]
    for i in $cmd
        if contains -- $i $argv
            return 1
        end
    end
    return 0
end