function __koi_subcommand_flow
    set -l cmd (commandline -poc)
    set -e cmd[1]

    if test (count $cmd) -ne (count $argv)
        return 1
    end
    # echo ==== start >> ~/debug.log
    # echo $argv $cmd >> ~/debug.log

    set -l check_cmd
    for i in $argv
        if test (count $cmd) -eq 1
            if test "$cmd" != "$i"; and test "$i" != '*'
                return 1
            end
        else
            set check_cmd $cmd[1]
            if test "$check_cmd" != "$i"; and test "$i" != '*'
                return 1
            end
            set -e cmd[1]
        end
    end

    return 0
end
