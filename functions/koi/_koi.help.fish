# 进一步优化，实现指令搜索及帮助信息插入
function _koi.help -d 'show manual' -a url
  set -l DIR (dirname (status -f))

  set -l specs \t帮助信息 更新KLib库 注册/取消域名指向 远程安装deb 拉取远程文件 重置仓库 放弃仓库当前未提交变更 开关nginx站点配置
  set -l commands (string split ' ' (_koi._command))
  for i in (seq (count $commands))
    echo - $commands[$i]\t\t\t$specs[$i]
  end
end