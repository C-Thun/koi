function __koi_subcommand_flow
    set -l cmd (commandline -poc)
    set -e cmd[1]

    set -l check_cmd
    for i in $argv
        # argv 未走完但cmd已经没有了
        if test (count $cmd) -eq 0
            return 0
        end

        if test (count $cmd) -eq 1
            set check_cmd $cmd
        else
            set check_cmd $cmd[1]
        end
        echo $cmd >> ~/debug.log
        echo test $check_cmd -ne $i >> ~/debug.log
        if test "$check_cmd" -ne "$i"
            return 0
        end

        if test (count $cmd) -eq 1
            break
        else
            set -e cmd[1]
        end
    end

    return 1
end
