function __koi_subcommand_pos
    set -l cmd (commandline -poc)
    set -e cmd[1]

    if test (count $cmd) -eq $argv[1]
        return 0
    end

    return 1
end
