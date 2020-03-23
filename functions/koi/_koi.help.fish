function _koi.help -a name
  set -l commands (string split ' ' (_koi.command))
  for i in (seq (count $commands))
    if not test -z $name
      if test $name = $commands[$i]
        echo - $commands[$i]

        set -l help_func _koi_spec.$commands[$i]
        if test (count (functions $help_func)) -gt 1
          koi exec-cmd "$help_func man $LANG"
        else
          echo '* The command does not have manual. *'
        end
      end
      continue
    end

    # 这里不再负责帮助函数载入，各库自行在init.fish中使用autoload载入
    # 所以当前不需要取函数定义文件目录
    # set -l command _koi.$commands[$i]
    # set -l FUNC_DIR (koi dir-func $command)

    echo - $commands[$i]

    set -l help_func _koi_spec.$commands[$i]
    if test (count (functions $help_func)) -gt 1
      koi exec-cmd "$help_func base $LANG"
    end
    echo
  end
end
