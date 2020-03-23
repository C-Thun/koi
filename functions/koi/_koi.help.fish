# 进一步优化，实现指令搜索及帮助信息插入
function _koi.help -a url
  set -l commands (string split ' ' (_koi.command))
  for i in (seq (count $commands))
    set -l command _koi.$commands[$i]
    set -l tmp (functions $command)
    set -l FUNC_DIR (dirname (string match -r '\# Defined in ([^\@]+)' $tmp[1]))
    echo $FUNC_DIR $commands[$i]
  end
end