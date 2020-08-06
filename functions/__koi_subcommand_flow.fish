function __koi_subcommand_flow
    set -l cmd (commandline -poc)
    set -e cmd[1]

    for i in $argv
        if test $cmd[$i] != $argv[$i]
            return 0
        end
    end

    return 1
end
