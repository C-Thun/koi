function _koi.help
  set -l commands (string split ' ' (_koi.command))
  for i in (seq (count $commands))
    set -l command _koi.$commands[$i]

    # 这里不再负责帮助函数载入，各库自行在init.fish中使用autoload载入
    # 所以当前不需要取函数定义文件目录
    # set -l FUNC_DIR (koi dir-func $command)

    echo - $commands[$i]

    set -l help_func _koi_spec.$commands[$i]
    if test (count (functions $help_func)) -gt 1
      # Execute the command.
      echo "function ___last_command --no-scope-shadowing
        $help_func base $LANG \$argv
      end" | source

      ___last_command $argv
    end
    echo
  end
end
