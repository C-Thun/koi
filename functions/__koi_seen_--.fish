function __koi_seen_--
    set -l cmd (commandline -poc)
    set -e cmd[1]

    for i in $cmd
        if contains -- $i "--"
            return 0
        end
    end
    return 1
end
